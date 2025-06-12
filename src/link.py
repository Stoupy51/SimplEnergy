
# Imports
from stewbeet.core import *

from .utils.advancements import add_visible_advancements
from .utils.balancing import setup_energy_balancing
from .utils.batteries import keep_energy_for_batteries
from .utils.cables import setup_cables_models
from .utils.custom_ore_generation import setup_custom_ore_generation
from .utils.energy import complete_place_and_destroy
from .utils.gui import setup_gui_in_resource_packs
from .utils.machines import setup_machines
from .utils.remaining import setup_remaining
from .utils.rotatable import setup_rotatable_tags


# Main function is run just before making finalyzing the build process (zip, headers, lang, ...)
def beet_default(ctx: Context) -> None:
	if Mem.ctx is None:
		Mem.ctx = ctx

	# Add commands to place and destroy functions for energy items
	complete_place_and_destroy()

	# Add advancements to the datapack
	add_visible_advancements()

	# Setup GUI in resource packs
	gui: dict[str, str] = setup_gui_in_resource_packs()

	# Setup machines
	setup_machines(gui)

	# Setup rotatable tags
	setup_rotatable_tags(["furnace_generator", "electric_furnace", "electric_smelter", "pulverizer"])

	# Keep energy for batteries
	keep_energy_for_batteries()

	# Setup energy balancing
	setup_energy_balancing(["solar_panel", "cauldron_generator", "simple_battery", "advanced_battery", "elite_battery"])

	# Setup cables models
	setup_cables_models()

	# Setup custom ore generation
	setup_custom_ore_generation()

	# Setup additional things
	setup_remaining()

