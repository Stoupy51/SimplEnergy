
# Imports
import stouputils as stp
from python_datapack.utils.io import *

# Setup functions for keeping energy for batteries
def keep_energy_for_batteries(config: dict) -> None:
	ns: str = config["namespace"]
	build_datapack: str = config["build_datapack"]

	# For each battery,
	batteries: list[str] = ["simple_battery", "advanced_battery", "elite_battery", "creative_battery"]
	for battery in batteries:
		
		# Copy current energy storage before destroying the block
		write_to_function(config, f"{ns}:custom_blocks/{battery}/destroy", f"""
# Keep energy when destroying the block
scoreboard players operation #storage {ns}.data = @s energy.storage

""", prepend = True)
		
		# Keep energy when replacing the item
		write_to_function(config, f"{ns}:custom_blocks/{battery}/replace_item", f"""
# Keep energy
function {ns}:utils/keep_energy

""")
	
	# Write keep_energy
	content: str = f"""
# Prepare input for the update_energy_lore function
data modify storage energy:temp list set value []
data modify storage energy:temp list append from entity @s Item
execute store result storage energy:temp list[0].components."minecraft:custom_data".energy.storage int 1 run scoreboard players get #storage {ns}.data

# Call the update_energy_lore function
function {ns}:calls/update_energy_lore/main

# Prevent stack with other batteries
execute store result storage energy:temp list[0].components."minecraft:custom_data".{ns}.not_stackable int 1 run scoreboard players get #stack {ns}.data
scoreboard players add #stack {ns}.data 1

# Update the item
data modify entity @s Item set from storage energy:temp list[0]
"""
	write_to_function(config, f"{ns}:utils/keep_energy", content)
	

	## Setup energy lore functions
	content: str = f"""
# Stop if not from the datapack
execute unless data storage energy:temp list[0].components."minecraft:custom_data".{ns} run return 0

## Copy scores
scoreboard players set #energy {ns}.data 0
execute store result score #energy {ns}.data run data get storage energy:temp list[0].components."minecraft:custom_data".energy.storage
scoreboard players operation #part_1 {ns}.data = #energy {ns}.data
scoreboard players operation #part_2 {ns}.data = #energy {ns}.data
data modify storage {ns}:temp macro set value {{part_1:0, part_2:0, scale:""}}

## kJ, MJ, GJ, TJ cases
execute if score #energy {ns}.data matches ..999 run data modify storage {ns}:temp macro.scale set value " kJ]"
execute if score #energy {ns}.data matches ..999 run scoreboard players set #part_2 {ns}.data 0"""

	# Add units check
	units_cases: list[tuple[int, str | int, str]] = [(1000, 1000**2 - 1, "MJ"), (1000**2, 1000**3 - 1, "GJ"), (1000**3, "", "TJ")]
	for mini, max, label in units_cases:
		digits: int = mini // 100
		content += f"""
execute if score #energy {ns}.data matches {mini}..{max} run scoreboard players set #{digits} {ns}.data {digits}
execute if score #energy {ns}.data matches {mini}..{max} run scoreboard players set #{mini} {ns}.data {mini}
execute if score #energy {ns}.data matches {mini}..{max} run data modify storage {ns}:temp macro.scale set value " {label}]"
execute if score #energy {ns}.data matches {mini}..{max} run scoreboard players operation #part_1 {ns}.data /= #{mini} {ns}.data
execute if score #energy {ns}.data matches {mini}..{max} run scoreboard players operation #part_2 {ns}.data %= #{mini} {ns}.data
execute if score #energy {ns}.data matches {mini}..{max} run scoreboard players operation #part_2 {ns}.data /= #{digits} {ns}.data"""

	# Apply lore
	content += f"""

# Apply the new lore to the item
execute store result storage {ns}:temp macro.part_1 int 1 run scoreboard players get #part_1 {ns}.data
execute store result storage {ns}:temp macro.part_2 int 1 run scoreboard players get #part_2 {ns}.data
function {ns}:calls/update_energy_lore/macro with storage {ns}:temp macro

# Indicate that the item lore was updated
data modify storage energy:temp list[0].components."minecraft:custom_data".energy.has_storage_lore set value 1b
#data remove storage {ns}:temp macro
"""	
	
	# Write the function and add it to the energy function tag
	write_to_function(config, f"{ns}:calls/update_energy_lore/main", content)
	write_to_tags(config, "energy:function/v1/update_energy_item", stp.super_json_dump({"values": [f"{ns}:calls/update_energy_lore/main"]}))

	# Write macro function
	write_to_function(config, f"{ns}:calls/update_energy_lore/macro", f"""
$execute unless data storage energy:temp list[0].components."minecraft:custom_data".energy.has_storage_lore run data modify storage energy:temp list[0].components."minecraft:lore" insert -2 value '[{{"text":"[Charge: ","color":"gray","italic":false}},"$(part_1).$(part_2)$(scale)"]'
$execute if data storage energy:temp list[0].components."minecraft:custom_data".energy.has_storage_lore run data modify storage energy:temp list[0].components."minecraft:lore"[-2] set value '[{{"text":"[Charge: ","color":"gray","italic":false}},"$(part_1).$(part_2)$(scale)"]'
""")

	return

