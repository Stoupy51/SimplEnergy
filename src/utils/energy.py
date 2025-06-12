
# Imports
from stewbeet.core import *
from stewbeet.core.utils.io import write_function


def insert_lib_call(path: str, is_machine: bool) -> None:
	if is_machine:
		write_function(path, "# Datapack Energy\nfunction energy:v1/api/break_machine\n", prepend = True)
	else:
		write_function(path, "# Datapack Energy\nfunction energy:v1/api/break_cable\n", prepend = True)

# Add commands to place and destroy functions for energy items
def complete_place_and_destroy() -> None:
	ns: str = Mem.ctx.project_id

	for item, data in Mem.definitions.items():
		energy: dict = data.get("custom_data", {}).get("energy", {})
		if len(energy) > 0:
			placement: str = f"{ns}:custom_blocks/{item}/place_secondary"
			destroy: str = f"{ns}:custom_blocks/{item}/destroy"
			if Mem.ctx.data.functions.get(placement): # Skip if no custom block
				continue

			# If the item is a cable
			if "transfer" in energy:
				insert_lib_call(destroy, is_machine = False)
				write_function(f"{ns}:custom_blocks/{item}/place_secondary", f"""
tag @s add energy.cable
scoreboard players set @s energy.transfer_rate {energy["transfer"]}
function energy:v1/api/init_cable
""")
			else:
				# Else, if if's a machine
				insert_lib_call(destroy, is_machine = True)
				if "usage" in energy or "generation" in energy:
					write_function(f"{ns}:custom_blocks/{item}/place_secondary", f"""
# Energy part
tag @s add energy.{"send" if "generation" in energy else "receive"}
scoreboard players set @s energy.max_storage {energy["max_storage"]}
scoreboard players operation @s energy.transfer_rate = @s energy.max_storage
scoreboard players add @s energy.storage 0
scoreboard players add @s energy.change_rate 0
function energy:v1/api/init_machine
""")
				else:
					# Else, it's a battery.
					write_function(f"{ns}:custom_blocks/{item}/place_secondary", f"""
# Energy part
tag @s add {ns}.battery_switcher
tag @s add energy.receive
tag @s add energy.send
data modify storage {ns}:temp energy set from entity @p[tag={ns}.placer] SelectedItem.components."minecraft:custom_data".energy
execute store result score @s energy.max_storage run data get storage {ns}:temp energy.max_storage
execute store result score @s energy.storage run data get storage {ns}:temp energy.storage
scoreboard players operation @s energy.transfer_rate = @s energy.max_storage
function energy:v1/api/init_machine
""")

	return

