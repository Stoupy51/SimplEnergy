
# Imports
from python_datapack.utils.print import *
from python_datapack.utils.io import *

# Setup functions for keeping energy for batteries
def keep_energy_for_batteries(config: dict) -> None:
	database: dict[str, dict] = config['database']
	namespace: str = config['namespace']
	build_datapack: str = config['build_datapack']

	# For each battery,
	batteries = [item for item in database if "battery" in item]
	for battery in batteries:
		
		# Copy current energy storage before destroying the block
		destroy_file: str = f"{build_datapack}/data/{namespace}/function/custom_blocks/{battery}/destroy.mcfunction"
		write_to_file(destroy_file, f"""
# Keep energy when destroying the block
scoreboard players operation #storage {namespace}.data = @s energy.storage
""", prepend = True)
		
		# Keep energy when replacing the item
		replace_item: str = f"{build_datapack}/data/{namespace}/function/custom_blocks/{battery}/replace_item.mcfunction"
		write_to_file(replace_item, f"""
# Keep energy
function {namespace}:utils/keep_energy
""")
	
	# Write keep_energy
	content = f"""
# Prepare input for the update_energy_lore function
data modify storage energy:temp list set value []
data modify storage energy:temp list append from entity @s Item
execute store result storage energy:temp list[0].components."minecraft:custom_data".energy.storage int 1 run scoreboard players get #storage {namespace}.data

# Call the update_energy_lore function
function {namespace}:calls/update_energy_lore/main

# Prevent stack with other batteries
execute store result storage energy:temp list[0].components."minecraft:custom_data".{namespace}.not_stackable int 1 run scoreboard players get #stack {namespace}.data
scoreboard players add #stack {namespace}.data 1

# Update the item
data modify entity @s Item set from storage energy:temp list[0]
"""
	write_to_file(f"{build_datapack}/data/{namespace}/function/utils/keep_energy.mcfunction", content)
	

	## Setup energy lore functions
	content = f"""
# Stop if not from the datapack
execute unless data storage energy:temp list[0].components."minecraft:custom_data".{namespace} run return 0

## Copy scores
scoreboard players set #energy {namespace}.data 0
execute store result score #energy {namespace}.data run data get storage energy:temp list[0].components."minecraft:custom_data".energy.storage
scoreboard players operation #part_1 {namespace}.data = #energy {namespace}.data
scoreboard players operation #part_2 {namespace}.data = #energy {namespace}.data
data modify storage {namespace}:temp macro set value {{part_1:0, part_2:0, scale:""}}

## kJ, MJ, GJ, TJ cases
execute if score #energy {namespace}.data matches ..999 run data modify storage {namespace}:temp macro.scale set value " kJ]"
execute if score #energy {namespace}.data matches ..999 run scoreboard players set #part_2 {namespace}.data 0"""
	# Add units check
	units_cases: list[tuple] = [(1000, 1000**2 - 1, "MJ"), (1000**2, 1000**3 - 1, "GJ"), (1000**3, "", "TJ")]
	for mini, max, label in units_cases:
		digits: int = mini // 100
		content += f"""
execute if score #energy {namespace}.data matches {mini}..{max} run scoreboard players set #{digits} {namespace}.data {digits}
execute if score #energy {namespace}.data matches {mini}..{max} run scoreboard players set #{mini} {namespace}.data {mini}
execute if score #energy {namespace}.data matches {mini}..{max} run data modify storage {namespace}:temp macro.scale set value " {label}]"
execute if score #energy {namespace}.data matches {mini}..{max} run scoreboard players operation #part_1 {namespace}.data /= #{mini} {namespace}.data
execute if score #energy {namespace}.data matches {mini}..{max} run scoreboard players operation #part_2 {namespace}.data %= #{mini} {namespace}.data
execute if score #energy {namespace}.data matches {mini}..{max} run scoreboard players operation #part_2 {namespace}.data /= #{digits} {namespace}.data"""

	# Apply lore
	content += f"""

# Apply the new lore to the item
execute store result storage {namespace}:temp macro.part_1 int 1 run scoreboard players get #part_1 {namespace}.data
execute store result storage {namespace}:temp macro.part_2 int 1 run scoreboard players get #part_2 {namespace}.data
function {namespace}:calls/update_energy_lore/macro with storage {namespace}:temp macro

# Indicate that the item lore was updated
data modify storage energy:temp list[0].components."minecraft:custom_data".energy.has_storage_lore set value 1b
data remove storage {namespace}:temp macro
"""	
	
	# Write the function and add it to the energy function tag
	write_to_file(f"{build_datapack}/data/{namespace}/function/calls/update_energy_lore/main.mcfunction", content)
	write_to_file(f"{build_datapack}/data/energy/tags/function/v1/update_energy_item.json", super_json_dump({"values": [f"{namespace}:calls/update_energy_lore/main"]}))

	# Write macro function
	write_to_file(f"{build_datapack}/data/{namespace}/function/calls/update_energy_lore/macro.mcfunction", f"""
$execute unless data storage energy:temp list[0].components."minecraft:custom_data".energy.has_storage_lore run data modify storage energy:temp list[0].components."minecraft:lore" insert -2 value [{{"text":"[Charge: ","color":"gray","italic":false}},"$(part_1).$(part_2)$(scale)"]
$execute if data storage energy:temp list[0].components."minecraft:custom_data".energy.has_storage_lore run data modify storage energy:temp list[0].components."minecraft:lore"[-2] set value [{{"text":"[Charge: ","color":"gray","italic":false}},"$(part_1).$(part_2)$(scale)"]
""")

	return

