
# Imports
from python_datapack.constants import *
from python_datapack.utils.print import *
from python_datapack.utils.io import *
from user.utils.advancements import add_visible_advancements
from user.utils.energy import complete_place_and_destroy
from user.utils.gui import setup_gui_in_resource_packs
from user.utils.cables import setup_cables_models
from user.utils.machines import setup_machines

# Main function is run just before making finalyzing the build process (zip, headers, lang, ...)
def main(config: dict) -> None:
	database: dict[str, dict] = config['database']
	
	# Add commands to place and destroy functions for energy items
	complete_place_and_destroy(config)

	# Add advancements to the datapack
	add_visible_advancements(config)

	# Setup GUI in resource packs
	gui = setup_gui_in_resource_packs(config)

	# Setup machines
	setup_machines(config, gui)

	# Setup rotatable tags
	rotatables = ["furnace_generator", "electric_furnace", "electric_smelter"]
	for rotatable in rotatables:
		file: str = f"{config['build_datapack']}/data/{config['namespace']}/function/custom_blocks/{rotatable}/place_secondary.mcfunction"
		write_to_file(file, f"\n# Make the block rotatable by wrench\ntag @s add {config['namespace']}.rotatable")

	# Keep energy for batteries
	batteries = [item for item in database if "battery" in item]
	for battery in batteries:
		destroy_file: str = f"{config['build_datapack']}/data/{config['namespace']}/function/custom_blocks/{battery}/destroy.mcfunction"
		write_to_file(destroy_file, f"\n# Keep energy when destroying the block\nscoreboard players operation #storage {config['namespace']}.data = @s energy.storage\n", prepend = True)
		replace_item: str = f"{config['build_datapack']}/data/{config['namespace']}/function/custom_blocks/{battery}/replace_item.mcfunction"
		write_to_file(replace_item, f"\n# Keep energy\nfunction {config['namespace']}:utils/keep_energy\n")
	
	# Setup cables models
	setup_cables_models(config)

	info("User code executed")

