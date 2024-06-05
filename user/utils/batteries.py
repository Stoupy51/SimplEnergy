
# Imports
from python_datapack.utils.print import *
from python_datapack.utils.io import *

# Setup machines work and visuals
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

	return

