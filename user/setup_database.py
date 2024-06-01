
# Import database helper
from python_datapack.utils.database_helper import *

# Imports
from .database.additions import main as additions_main

# Constants
simplunium_durability = 3 * VanillaEquipments.PICKAXE.value[DEFAULT_ORE.IRON]["durability"]
STARTING_CMD: int = 2012000	# Prefix for custom_model_data
ORES_CONFIGS: dict[str, EquipmentsConfig|None] = {
	"simplunium_ingot":	EquipmentsConfig(DEFAULT_ORE.IRON, simplunium_durability, {"generic.attack_damage": 1, "generic.armor": 0.5, "player.mining_efficiency": 0.2}),
}

# Main function should return a database
def main(config: dict) -> dict[str, dict]:
	database = {}

	# Generate ores in database
	generate_everything_about_these_ores(config, database, ORES_CONFIGS)

	# Apply database additions
	database = additions_main(database)

	# Final adjustments
	deterministic_custom_model_data(config, database, STARTING_CMD, black_list = ["simple_cable", "advanced_cable", "elite_cable", "cauldron_generator"])
	clean_up_empty_recipes(database)
	add_item_name_and_lore_if_missing(config, database)
	add_private_custom_data_for_namespace(config, database)
	add_smithed_ignore_vanilla_behaviours_convention(database)
	print()

	# Return database
	return database

