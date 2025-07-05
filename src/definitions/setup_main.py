
# Imports
from stewbeet.core import *

from .additions import main_additions
from .manual_assets import manual_assets_main

# Constants
simplunium_durability = 3 * VanillaEquipments.PICKAXE.value[DefaultOre.IRON]["durability"]
ORES_CONFIGS: dict[str, EquipmentsConfig|None] = {
	"simplunium_ingot":	EquipmentsConfig(
		DefaultOre.IRON, simplunium_durability, {"attack_damage": 1, "armor": 0.5, "mining_efficiency": 0.2}
	),
}
DUSTS_CONFIGS: dict[str, tuple[list[str|dict], dict]] = {
	"copper":	(["raw_copper","copper_ore","deepslate_copper_ore"],												ingr_repr("minecraft:copper_ingot")),
	"iron":		(["raw_iron","iron_ore","deepslate_iron_ore"],														ingr_repr("minecraft:iron_ingot")),
	"gold":		(["raw_gold","gold_ore","deepslate_gold_ore"],														ingr_repr("minecraft:gold_ingot")),
	"lapis":	(["lapis_ore","deepslate_lapis_ore"],																ingr_repr("minecraft:lapis_lazuli")),
	"diamond":	(["diamond_ore","deepslate_diamond_ore"],															ingr_repr("minecraft:diamond")),
	"emerald":	(["emerald_ore","deepslate_emerald_ore"],															ingr_repr("minecraft:emerald")),
	"quartz":	(["nether_quartz_ore"],																				ingr_repr("minecraft:quartz")),
	"netherite":(["ancient_debris"],																				ingr_repr("minecraft:netherite_scrap")),
	"tin":		([ingr_repr(x, "mechanization") for x in ["raw_tin","tin_ore","deepslate_tin_ore"]],				ingr_repr("tin_ingot", "mechanization")),
	"titanium":	([ingr_repr(x, "mechanization") for x in ["raw_titanium","titanium_ore","deepslate_titanium_ore"]],	ingr_repr("titanium_ingot", "mechanization")),
}

# Make all the item definitions
def beet_default(ctx: Context) -> None:
	if Mem.ctx is None:
		Mem.ctx = ctx

	# Generate ores in database
	generate_everything_about_these_materials(ORES_CONFIGS)

	# Generate dusts in database
	add_recipes_for_all_dusts(DUSTS_CONFIGS)

	# Apply database additions
	main_additions()

	# Final adjustments
	add_energy_lore_to_definitions()
	add_item_model_component(black_list = ["simple_cable", "advanced_cable", "elite_cable"])
	add_item_name_and_lore_if_missing()
	add_private_custom_data_for_namespace()
	add_smithed_ignore_vanilla_behaviours_convention()

	# Copy manual assets that can't be generated
	manual_assets_main()

