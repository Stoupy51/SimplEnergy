
# Imports
from python_datapack.utils.print import *
from python_datapack.utils.io import *

# Setup energy balancing
def setup_energy_balancing(config: dict, can_balance: list[str]) -> None:
	version: str = config['version']
	namespace: str = config['namespace']
	build_datapack: str = config['build_datapack']
	functions_folder: str = f"{build_datapack}/data/{namespace}/function"
	can_balance_tag: str = f"{namespace}.can_balance"
	balanced_tag: str = f"{namespace}.balanced"
	adjacent_tag: str = f"{namespace}.adjacent"

	# Write in second_5.mcfunction a call to balancing function
	write_to_file(f"{functions_folder}/v{version}/second_5.mcfunction", f"""
# Energy Balancing system (balance every device having at least 20 kJ)
execute as @e[tag={can_balance_tag},scores={{energy.storage=20..}}] at @s[tag=!{balanced_tag}] run function {namespace}:balancing/main
tag @e[tag={balanced_tag}] remove {balanced_tag}
""")
	
	# Write balancing/main.mcfunction
	device_main_calls = ""
	for device in can_balance:
		device_main_calls += f"\nexecute if entity @s[tag={namespace}.{device}] run function {namespace}:balancing/{device}/main"
	balancing_content = f"""
# Stop if already balanced
execute if entity @s[tag={balanced_tag}] run return 0

# Copy max storage from device to scoreboard & add balance tags
scoreboard players operation #max_storage {namespace}.data = @s energy.max_storage

# For each balancing device, run the main function{device_main_calls}

# Remove adjacent tags
tag @e[tag={adjacent_tag}] remove {adjacent_tag}
"""
	write_to_file(f"{functions_folder}/balancing/main.mcfunction", balancing_content)

	# For each balancing device, write the balancing functions
	for device in can_balance:

		# Write balancing/device/found.mcfunction
		selector: str = f"@e[tag={namespace}.{device},tag={can_balance_tag},tag=!{adjacent_tag},dx=0,dy=0,dz=0]"
		condition_run: str = f"if score @s energy.max_storage = #max_storage {namespace}.data at @s run function {namespace}:balancing/{device}/found"
		write_to_file(f"{functions_folder}/balancing/{device}/found.mcfunction", f"""
# Add tags and scores
tag @s add {adjacent_tag}
tag @s add {balanced_tag}
scoreboard players add #count {namespace}.data 1
scoreboard players operation #total_energy {namespace}.data += @s energy.storage

# Check nearby {device} recursively
execute align xyz positioned ~ ~1 ~ as {selector} {condition_run}
execute align xyz positioned ~ ~-1 ~ as {selector} {condition_run}
execute align xyz positioned ~ ~ ~1 as {selector} {condition_run}
execute align xyz positioned ~ ~ ~-1 as {selector} {condition_run}
execute align xyz positioned ~1 ~ ~ as {selector} {condition_run}
execute align xyz positioned ~-1 ~ ~ as {selector} {condition_run}
""")		
		# Write balancing/device/main.mcfunction
		write_to_file(f"{functions_folder}/balancing/{device}/main.mcfunction", f"""
# Collect energy from nearby blocks recursively
scoreboard players set #count {namespace}.data 0
scoreboard players set #total_energy {namespace}.data 0
function {namespace}:balancing/{device}/found

# If there are no adjacent device or the sum is higher than integer limit, stop here
execute if score #count {namespace}.data matches 1 run return 0
execute if score #total_energy {namespace}.data matches ..0 run return 0

# Redistributes energy to all adjacent devices
scoreboard players operation #per_device {namespace}.data = #total_energy {namespace}.data
scoreboard players operation #per_device {namespace}.data /= #count {namespace}.data
scoreboard players operation @e[tag={adjacent_tag}] energy.storage = #per_device {namespace}.data

# Add the remaining energy to the current device
scoreboard players operation #remaining {namespace}.data = #total_energy {namespace}.data
scoreboard players operation #remaining {namespace}.data %= #count {namespace}.data
scoreboard players operation @s energy.storage += #remaining {namespace}.data

# Sometimes the remaining energy is too high, so we set it to the max storage resulting in a loss of energy (lets assume it's a feature: energy transformed in heat)
execute if score @s energy.storage > @s energy.max_storage run scoreboard players operation @s energy.storage = @s energy.max_storage
""")


	# Add in the placement function the balancing tag
	for device in can_balance:
		write_to_file(f"{functions_folder}/custom_blocks/{device}/place_secondary.mcfunction", f"\n# Add balancing tag\ntag @s add {can_balance_tag}")

	return

