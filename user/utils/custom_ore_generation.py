
# Imports
from python_datapack.utils.database_helper import *

def setup_custom_ore_generation(config: dict):

	# Custom Ore generation
	ore_configs = {
		"simplunium_ore": [CustomOreGeneration(
			dimensions = ["minecraft:overworld"],
			maximum_height = 50,
			minimum_height = 0,
			veins_per_region = 2,
			vein_size_logic = 0.4,
		)],
		"deepslate_simplunium_ore": [CustomOreGeneration(
			dimensions = ["minecraft:overworld"],
			maximum_height = 0,
			veins_per_region = 2,
			vein_size_logic = 0.4,
		)],
	}

	# For each ore generation,
	for ore, config_list in ore_configs.items():
		for i, gen_config in enumerate(config_list):
			if len(config_list) > 1:
				gen_config.generate_files(config, ore, i)
			else:
				gen_config.generate_files(config, ore)

	info("All customs ores now generates in the world!")

