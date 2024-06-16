
# Imports
from python_datapack.constants import *
from python_datapack.utils.print import *
from python_datapack.utils.io import *
from user.utils.custom_ore_generation import setup_custom_ore_generation
from user.utils.advancements import add_visible_advancements
from user.utils.batteries import keep_energy_for_batteries
from user.utils.energy import complete_place_and_destroy
from user.utils.balancing import setup_energy_balancing
from user.utils.gui import setup_gui_in_resource_packs
from user.utils.rotatable import setup_rotatable_tags
from user.utils.cables import setup_cables_models
from user.utils.machines import setup_machines

# Main function is run just before making finalyzing the build process (zip, headers, lang, ...)
def main(config: dict) -> None:
	namespace: str = config['namespace']
	version: str = config['version']
	functions: str = f"{config['build_datapack']}/data/{namespace}/function"
	
	# Add commands to place and destroy functions for energy items
	complete_place_and_destroy(config)

	# Add advancements to the datapack
	add_visible_advancements(config)

	# Setup GUI in resource packs
	gui = setup_gui_in_resource_packs(config)

	# Setup machines
	setup_machines(config, gui)

	# Setup rotatable tags
	setup_rotatable_tags(config, ["furnace_generator", "electric_furnace", "electric_smelter"])

	# Keep energy for batteries
	keep_energy_for_batteries(config)

	# Setup energy balancing
	setup_energy_balancing(config, ["solar_panel", "cauldron_generator", "simple_battery", "advanced_battery", "elite_battery"])
	
	# Setup cables models
	setup_cables_models(config)

	# Setup custom ore generation
	setup_custom_ore_generation(config)

	# Setup additional things
	write_to_file(f"{functions}/v{version}/tick_2.mcfunction", f"""
# Passive multimeter
execute as @a[tag=!global.ignore.gui,tag=simplenergy.state.multimeter] at @s anchored eyes positioned ^ ^ ^.2 run function simplenergy:utils/multimeter/passive/main
""")

