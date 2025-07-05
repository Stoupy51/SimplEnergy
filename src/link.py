
# Imports
from stewbeet.contrib.simplenergy import (
	Context,
	GuiTranslation,
	Mem,
	insert_lib_calls,
	keep_energy_for_batteries,
	setup_cables_models,
	setup_energy_balancing,
	setup_gui_in_resource_packs,
	setup_wrench,
)

from .utils.advancements import add_visible_advancements
from .utils.custom_ore_generation import setup_custom_ore_generation
from .utils.machines import setup_machines
from .utils.remaining import setup_remaining


# Main function is run just before making finalyzing the build process (zip, headers, lang, ...)
def beet_default(ctx: Context) -> None:
	if Mem.ctx is None:
		Mem.ctx = ctx

	# Add commands to place and destroy functions for energy items
	insert_lib_calls()

	# Add advancements to the datapack
	add_visible_advancements()

	# Setup GUI in resource packs
	gui: dict[str, str] = setup_gui_in_resource_packs(
		{
			"electric_brewing_stand": GuiTranslation.brewing_stand,
			"electric_furnace": GuiTranslation.furnace_bottom,
			"electric_smelter": GuiTranslation.furnace_bottom,
			"furnace_generator": GuiTranslation.furnace_top,
			"pulverizer": GuiTranslation.barrel_bottom_right,
		}
	)

	# Setup machines
	setup_machines(gui)

	# Setup rotatable tags
	setup_wrench(["furnace_generator", "electric_furnace", "electric_smelter", "pulverizer"])

	# Keep energy for batteries
	keep_energy_for_batteries(["simple_battery", "advanced_battery", "elite_battery", "creative_battery"])

	# Setup energy balancing
	setup_energy_balancing(["solar_panel", "cauldron_generator", "simple_battery", "advanced_battery", "elite_battery"])

	# Setup cables models
	setup_cables_models(["simple_cable", "advanced_cable", "elite_cable"])

	# Setup custom ore generation
	setup_custom_ore_generation()

	# Setup additional things
	setup_remaining()

