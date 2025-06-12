
# Imports
from stewbeet.core import *
from stouputils.print import info


# Main function
def setup_custom_ore_generation():

	# Custom Ore generation
	CustomOreGeneration.all_with_config(ore_configs = {
		"simplunium_ore": [
			CustomOreGeneration(
				dimensions = ["minecraft:overworld"],
				maximum_height = 50,
				minimum_height = 0,
				veins_per_region = 2,
				vein_size_logic = 0.4,
			)
		],
		"deepslate_simplunium_ore": [
			CustomOreGeneration(
				dimensions = ["minecraft:overworld"],
				maximum_height = 0,
				veins_per_region = 2,
				vein_size_logic = 0.4,
			)
		],
	})
	info("All customs ores now generates in the world!")

