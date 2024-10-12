
# Import database helper
from python_datapack.utils.database_helper import *

# Imports
from .database.additions import main as additions_main
from .database.manual_assets import main as manual_assets_main

# Constants
simplunium_durability = 3 * VanillaEquipments.PICKAXE.value[DEFAULT_ORE.IRON]["durability"]
STARTING_CMD: int = 2012000	# Prefix for custom_model_data
ORES_CONFIGS: dict[str, EquipmentsConfig|None] = {
	"simplunium_ingot":	EquipmentsConfig(DEFAULT_ORE.IRON, simplunium_durability, {"generic.attack_damage": 1, "generic.armor": 0.5, "player.mining_efficiency": 0.2}),
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

# Main function should return a database
def main(config: dict) -> dict[str, dict]:
	database = {}

	# Generate ores in database
	generate_everything_about_these_materials(config, database, ORES_CONFIGS)

	# Generate dusts in database
	add_recipes_for_all_dusts(config, database, DUSTS_CONFIGS)

	# Apply database additions
	database = additions_main(database)

	# Final adjustments
	deterministic_custom_model_data(config, database, STARTING_CMD, black_list = ["simple_cable", "advanced_cable", "elite_cable"])
	add_item_name_and_lore_if_missing(config, database)
	add_private_custom_data_for_namespace(config, database)
	add_smithed_ignore_vanilla_behaviours_convention(database)
	print()

	# Copy manual assets that can't be generated
	manual_assets_main(config)

	# Return database
	return database

