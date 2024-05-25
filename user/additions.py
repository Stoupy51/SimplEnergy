
# Imports
from python_datapack.utils.database_helper import *
from config import NAMESPACE

def main(database: dict[str, dict]) -> dict[str, dict]:

	# Give Additional data for every item
	MISC = "miscellaneous"
	database_additions = {
		"simplunium_block": {VANILLA_BLOCK: "minecraft:iron_block"},
		"simplunium_ore": {VANILLA_BLOCK: VANILLA_BLOCK_FOR_ORES, NO_SILK_TOUCH_DROP: "raw_simplunium"},
		"deepslate_simplunium_ore": {VANILLA_BLOCK: VANILLA_BLOCK_FOR_ORES, NO_SILK_TOUCH_DROP: "raw_simplunium"},
		"raw_simplunium_block": {VANILLA_BLOCK: "minecraft:raw_iron_block"},

		"multimeter": {"id": "minecraft:warped_fungus_on_a_stick", CATEGORY: MISC, "unbreakable": {"show_in_tooltip": False},	RESULT_OF_CRAFTING:[{"type":"crafting_shaped","result_count":1,"category":"equipment","shape":["II","CC","CC"],"ingredients":{"I":ingr_repr("minecraft:iron_ingot"),"C":ingr_repr("minecraft:copper_ingot")}}], "lore": ['{"text":"Allows you to analyse machines","italic":false,"color":"gray"}','{"text":"to get their energy information","italic":false,"color":"gray"}','{"text":"[Hold in offhand for passive use]","italic":false,"color":"white"}']},
		"wrench": {"id": "minecraft:warped_fungus_on_a_stick", CATEGORY: MISC, "unbreakable": {"show_in_tooltip": False},		RESULT_OF_CRAFTING:[{"type":"crafting_shaped","result_count":1,"category":"equipment","shape":["I","I"],"ingredients":{"I":ingr_repr("minecraft:iron_ingot")}}], "lore": ['{"text":"Provides you the ability to instantly","italic":false,"color":"gray"}','{"text":"break cables and rotates machines while sneaking","italic":false,"color":"gray"}']},

		"simple_battery": {"id": CUSTOM_BLOCK_VANILLA, VANILLA_BLOCK: "minecraft:copper_block", CATEGORY: "energy", "custom_data": {"energy": {"storage":0, "max_storage": 10000}},			RESULT_OF_CRAFTING:[{"type":"crafting_shaped","result_count":1,"category":"misc","shape":["CCC","CRC","III"],"ingredients":{"C":ingr_repr("minecraft:copper_block"),"R":ingr_repr("minecraft:redstone"),"I":ingr_repr("minecraft:iron_ingot")}}],								"lore": ['{"text":"[Energy Storage: 10 MJ]","italic":false,"color":"gray"}']},
		"advanced_battery": {"id": CUSTOM_BLOCK_VANILLA, VANILLA_BLOCK: "minecraft:gold_block", CATEGORY: "energy", "custom_data": {"energy": {"storage":0, "max_storage": 25000}},			RESULT_OF_CRAFTING:[{"type":"crafting_shaped","result_count":1,"category":"misc","shape":["GGG","GXG","SSS"],"ingredients":{"G":ingr_repr("minecraft:gold_block"),"X":ingr_repr("simple_battery", NAMESPACE),"S":ingr_repr("simplunium_ingot", NAMESPACE)}}],					"lore": ['{"text":"[Energy Storage: 25 MJ]","italic":false,"color":"gray"}']},
		"elite_battery": {"id": CUSTOM_BLOCK_VANILLA, VANILLA_BLOCK: "minecraft:iron_block", CATEGORY: "energy", "custom_data": {"energy": {"storage":0, "max_storage": 50000}},			RESULT_OF_CRAFTING:[{"type":"crafting_shaped","result_count":1,"category":"misc","shape":["RRR","RXR","SSS"],"ingredients":{"R":ingr_repr("minecraft:redstone_block"),"X":ingr_repr("advanced_battery", NAMESPACE),"S":ingr_repr("simplunium_block", NAMESPACE)}}],				"lore": ['{"text":"[Energy Storage: 50 MJ]","italic":false,"color":"gray"}']},
		"creative_battery": {"id": CUSTOM_BLOCK_VANILLA, VANILLA_BLOCK: "minecraft:iron_block", "custom_data": {"energy": {"storage":2000000000, "max_storage": 2147483647}}, "enchantment_glint_override": True, "lore": ['{"text":"[Energy Storage: 2147 GJ]","italic":false,"color":"gray"}']},

		"cauldron_generator": {"id": CUSTOM_BLOCK_VANILLA, VANILLA_BLOCK: "minecraft:cauldron", CATEGORY: "energy", "custom_data": {"energy": {"generation":5, "max_storage": 500}},		RESULT_OF_CRAFTING:[{"type":"crafting_shaped","result_count":1,"category":"misc","shape":["I I","IRI","III"],"ingredients":{"I":ingr_repr("minecraft:iron_ingot"),"R":ingr_repr("minecraft:redstone")}}],																		"lore": ['{"text":"[Energy Generation: 5 kW]","italic":false,"color":"gray"}','{"text":"[Energy Buffer: 500 kJ]","italic":false,"color":"gray"}']},
		"furnace_generator": {"id": CUSTOM_BLOCK_VANILLA, VANILLA_BLOCK: "minecraft:furnace", CATEGORY: "energy", "custom_data": {"energy": {"generation":10, "max_storage": 800}},			RESULT_OF_CRAFTING:[{"type":"crafting_shaped","result_count":1,"category":"misc","shape":["III","RFR","SSS"],"ingredients":{"I":ingr_repr("minecraft:iron_block"),"R":ingr_repr("minecraft:redstone"),"F":ingr_repr("minecraft:furnace"),"S":ingr_repr("minecraft:stone")}}],	"lore": ['{"text":"[Energy Generation: 10 kW]","italic":false,"color":"gray"}','{"text":"[Energy Buffer: 800 kJ]","italic":false,"color":"gray"}']},
		"solar_panel": {
			"id": CUSTOM_BLOCK_VANILLA, VANILLA_BLOCK: "minecraft:daylight_detector", CATEGORY: "energy", "custom_data": {"energy": {"generation":4, "max_storage": 600}},		RESULT_OF_CRAFTING:[{"type":"crafting_shaped","result_count":1,"category":"misc","shape":["LLL","LDL","III"],"ingredients":{"L":ingr_repr("minecraft:lapis_lazuli"),"D":ingr_repr("minecraft:daylight_detector"),"I":ingr_repr("minecraft:iron_block")}}],						"lore": ['{"text":"[Energy Generation: 4 kW]","italic":false,"color":"gray"}','{"text":"[Energy Buffer: 600 kJ]","italic":false,"color":"gray"}'],
			OVERRIDE_MODEL: {"parent":"block/daylight_detector", "textures": {"side": f"{NAMESPACE}:block/solar_panel_side", "top": f"{NAMESPACE}:block/solar_panel_top"}},
		},

		"electric_furnace": {"id": CUSTOM_BLOCK_VANILLA, VANILLA_BLOCK: "minecraft:furnace", CATEGORY: "energy", "custom_data": {"energy": {"usage":10, "max_storage": 800}},				RESULT_OF_CRAFTING:[{"type":"crafting_shaped","result_count":1,"category":"misc","shape":["LLL","LFL","III"],"ingredients":{"L":ingr_repr("minecraft:lapis_lazuli"),"F":ingr_repr("minecraft:furnace"),"I":ingr_repr("minecraft:iron_block")}}],								"lore": ['{"text":"[Power Usage: 10 kW]","italic":false,"color":"gray"}','{"text":"[Energy Buffer: 800 kJ]","italic":false,"color":"gray"}']},
		"electric_smelter": {"id": CUSTOM_BLOCK_VANILLA, VANILLA_BLOCK: "minecraft:furnace", CATEGORY: "energy", "custom_data": {"energy": {"usage":80, "max_storage": 6400}},				RESULT_OF_CRAFTING:[{"type":"crafting_shaped","result_count":1,"category":"misc","shape":["III","IFI","BBB"],"ingredients":{"I":ingr_repr("simplunium_ingot", NAMESPACE),"F":ingr_repr("electric_furnace", NAMESPACE),"B":ingr_repr("simplunium_block", NAMESPACE)}}],			"lore": ['{"text":"[Power Usage: 80 kW]","italic":false,"color":"gray"}','{"text":"[Energy Buffer: 6400 kJ]","italic":false,"color":"gray"}']},
		"electric_brewing_stand": {
			"id": CUSTOM_BLOCK_VANILLA, VANILLA_BLOCK: "minecraft:brewing_stand", CATEGORY: "energy", "custom_data": {"energy": {"usage":40, "max_storage": 2400}},	RESULT_OF_CRAFTING:[{"type":"crafting_shaped","result_count":1,"category":"misc","shape":["III","IBI","LLL"],"ingredients":{"I":ingr_repr("simplunium_ingot", NAMESPACE),"B":ingr_repr("minecraft:brewing_stand"),"L":ingr_repr("minecraft:lapis_block")}}],					"lore": ['{"text":"[Power Usage: 40 kW]","italic":false,"color":"gray"}','{"text":"[Energy Buffer: 2400 kJ]","italic":false,"color":"gray"}'],
			OVERRIDE_MODEL: {"parent":"block/brewing_stand", "textures": {"base": f"{NAMESPACE}:block/electric_brewing_stand_base","stand": f"{NAMESPACE}:block/electric_brewing_stand"}},
		},
		#"pulveriser": TODO,

		"simple_cable": {
			"id": CUSTOM_BLOCK_ALTERNATIVE, VANILLA_BLOCK: "minecraft:player_head", CATEGORY: "energy", "custom_data": {"energy": {"transfer":20}}, "lore": ['{"text":"[Transfer Speed: 20 kW]","italic":false,"color":"gray"}'],
			RESULT_OF_CRAFTING:[
				{"type":"crafting_shaped","result_count":1,"category":"misc","shape":["ICI","IOI","ICI"],"ingredients":{"I":ingr_repr("minecraft:iron_ingot"),"C":ingr_repr("minecraft:copper_ingot"),"O":ingr_repr("minecraft:coal")}},
				{"type":"crafting_shaped","result_count":1,"category":"misc","shape":["ICI","IOI","ICI"],"ingredients":{"I":ingr_repr("minecraft:iron_ingot"),"C":ingr_repr("minecraft:copper_ingot"),"O":ingr_repr("minecraft:charcoal")}},
				{"type":"crafting_shaped","result_count":1,"category":"misc","shape":["III","COC","III"],"ingredients":{"I":ingr_repr("minecraft:iron_ingot"),"C":ingr_repr("minecraft:copper_ingot"),"O":ingr_repr("minecraft:coal")}},
				{"type":"crafting_shaped","result_count":1,"category":"misc","shape":["III","COC","III"],"ingredients":{"I":ingr_repr("minecraft:iron_ingot"),"C":ingr_repr("minecraft:copper_ingot"),"O":ingr_repr("minecraft:charcoal")}},
			],
			"profile": {
				"id": [-709098200,1001541428,-2043264882,-430220135],
				"properties":[{"name":"textures", "value":"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTE2MTcxZjY3ZGUxNzQxMzA4ZTUxYzNmNTBkODE1M2YzMmIzNDljNDYwODgxYzZjODM5ZTYwMTk1NDM1ODliMSJ9fX0="}],
			},
		},
		"advanced_cable": {
			"id": CUSTOM_BLOCK_ALTERNATIVE, VANILLA_BLOCK: "minecraft:player_head", CATEGORY: "energy", "custom_data": {"energy": {"transfer":60}}, "lore": ['{"text":"[Transfer Speed: 60 kW]","italic":false,"color":"gray"}'],
			RESULT_OF_CRAFTING:[
				{"type":"crafting_shapeless","result_count":1,"category":"misc","ingredients":[ingr_repr("simple_cable", NAMESPACE)] + 8*[ingr_repr("minecraft:lapis_lazuli")]},
			],
			"profile": {
				"id": [-709098200,1001541428,-2043264882,-430220135],
				"properties":[{"name":"textures", "value":"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzlmNjNlZGIwMDA4NWM1Mzk0Y2FmZjg2Yzk3ZmU4NGQxYmUwMGEwMDcxMDE4Y2YwOTAwZTdiNjMwYTY2Y2VlZSJ9fX0="}],
			},
		},
		"elite_cable": {
			"id": CUSTOM_BLOCK_ALTERNATIVE, VANILLA_BLOCK: "minecraft:player_head", CATEGORY: "energy", "custom_data": {"energy": {"transfer":120}}, "lore": ['{"text":"[Transfer Speed: 120 kW]","italic":false,"color":"gray"}'],
			RESULT_OF_CRAFTING:[
				{"type":"crafting_shapeless","result_count":1,"category":"misc","ingredients":[ingr_repr("advanced_cable", NAMESPACE)] + 4*[ingr_repr("minecraft:redstone_block")]},
			],
			"profile": {
				"id": [-709098200,1001541428,-2043264882,-430220135],
				"properties":[{"name":"textures", "value":"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjlmMzJjOWNkNTU2MzJmNjEzZjRhMDU2ZGEyYzJhYTkzZjMwOTk2ZGY2NzMxZTcyYmM1NDA4NzA4ZGE5MWYzOCJ9fX0="}],
			},
		},
	}

	# Update the database with new data
	for k, v in database_additions.items():
		if k in database:
			database[k].update(v)
		else:
			database[k] = v
	info("Database additions loaded")
	return database

