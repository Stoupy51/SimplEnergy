
# Imports
from python_datapack.constants import *
from python_datapack.utils.print import *
from python_datapack.utils.io import *

def insert_lib_call(path: str, is_machine: bool):
	if is_machine:
		FILES_TO_WRITE[path] = FILES_TO_WRITE[path].replace("\nkill @s", "\nfunction energy:v1/api/break_machine\nkill @s")
	else:
		FILES_TO_WRITE[path] = FILES_TO_WRITE[path].replace("\nkill @s", "\nfunction energy:v1/api/break_item\nkill @s")

# Main function is run just before making finalyzing the build process (zip, headers, lang, ...)
def main(config: dict) -> None:
	database: dict = config['database']
	
	# Add commands to place and destroy functions for energy items
	for item, data in database.items():
		energy = data.get("custom_data", {}).get("energy", {})
		if len(energy) > 0:
			placement = f"{config['datapack_functions']}/custom_blocks/{item}/place_secondary.mcfunction"
			destroy = f"{config['datapack_functions']}/custom_blocks/{item}/destroy.mcfunction"
			if not FILES_TO_WRITE.get(placement): # Skip if no custom block
				continue

			# If the item is a cable
			if "transfer" in energy:
				insert_lib_call(destroy, is_machine = False)
				write_to_file(placement, f"""
tag @s add energy.cable
scoreboard players set @s energy.transfer_rate {energy['transfer']}
function energy:v1/api/init_cable
""")
			else:
				# Else, if if's a machine
				insert_lib_call(destroy, is_machine = True)
				if "usage" in energy or "generate" in energy:
					write_to_file(placement, f"""
# Energy part
tag @s add energy.{"send" if "generate" in energy else "receive"}
scoreboard players set @s energy.max_storage {energy['max_storage']}
scoreboard players operation @s energy.transfer_rate = @s energy.max_storage
scoreboard players add @s energy.storage 0
scoreboard players add @s energy.change_rate 0
function energy:v1/api/init_machine
""")
				else:
					# Else, it's a battery.
					write_to_file(placement, f"""
# Energy part
tag @s add energy.receive
tag @s add energy.send
data modify storage {config['namespace']}:temp energy set from entity @p[tag={config['namespace']}.placer] SelectedItem.components."minecraft:custom_data".energy
execute store result score @s energy.max_storage run data get storage {config['namespace']}:temp energy.max_storage
execute store result score @s energy.storage run data get storage {config['namespace']}:temp energy.storage
scoreboard players operation @s energy.transfer_rate = @s energy.max_storage
function energy:v1/api/init_machine
""")
		pass











	info("User code executed")

