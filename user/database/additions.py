
# Imports
import stouputils as stp
from python_datapack.utils.database_helper import *
from config import NAMESPACE

def format_number(number: int) -> str:
	""" Formats a number into a string with appropriate unit suffix (k, M, G, T).

	Args:
		number (int): The number to format
	Returns:
		str: Formatted string with unit suffix, ex: 12000 -> "12 M", 1200 -> "1200 k"
	"""
	if number < 9999:
		return f"{number} k"
	elif number < 9999999:
		return f"{number/1000:.0f} M" 
	elif number < 9999999999:
		return f"{number/1000000:.0f} G"
	else:
		return f"{number/1000000000:.0f} T"

def create_energy_lore(energy_data: dict) -> list[dict]:
	""" Creates lore entries for energy-related blocks based on their energy data.
	
	Args:
		energy_data (dict): Dictionary containing energy configuration values
	Returns:
		list[dict]: List of lore entries
	"""
	# Determine if this is a battery (no usage/generation) or a cable (only transfer)
	is_battery: bool = "max_storage" in energy_data and "usage" not in energy_data and "generation" not in energy_data
	is_cable: bool = "transfer" in energy_data and "max_storage" not in energy_data

	# Create the lore config
	lore_config: dict[str, tuple[str, str]] = {
		"generation": ("Energy Generation", "W"),
		"usage": ("Power Usage", "W"), 
		"max_storage": ("Energy Storage" if is_battery else "Energy Buffer", "J"),
		"transfer": ("Transfer Speed" if is_cable else "Energy Transfer", "W")
	}

	# Create the lore entries
	lore: list[dict] = []
	for key, (label, unit) in lore_config.items():
		if key in energy_data:
			lore.append({
				"text": f"[{label}: {format_number(energy_data[key])}{unit}]",
				"italic": False,
				"color": "gray"
			})

	return lore

def main(database: dict[str, dict]) -> dict[str, dict]:

	# Give Additional data for every item
	MISC = "miscellaneous"
	database_additions = {
		"multimeter": {
			"id": "minecraft:warped_fungus_on_a_stick", CATEGORY: MISC, "unbreakable": {"show_in_tooltip": False},
			RESULT_OF_CRAFTING:[{"type":"crafting_shaped","result_count":1,"category":"equipment","shape":["II","CC","CC"],"ingredients":{"I":ingr_repr("minecraft:iron_ingot"),"C":ingr_repr("minecraft:copper_ingot")}}],
			"lore": [{"text":"Allows you to analyse machines","italic":False,"color":"gray"},{"text":"to get their energy information","italic":False,"color":"gray"},{"text":"[Hold in offhand for passive use]","italic":False,"color":"white"}],
			OVERRIDE_MODEL: {"parent":"item/handheld"},
		},
		"wrench": {"id": "minecraft:warped_fungus_on_a_stick", CATEGORY: MISC, "unbreakable": {"show_in_tooltip": False},							RESULT_OF_CRAFTING:[{"type":"crafting_shaped","result_count":1,"category":"equipment","shape":[" I "," II", "I  "],"ingredients":{"I":ingr_repr("simplunium_ingot", NAMESPACE)}}], "lore": [{"text":"Provides you the ability to instantly","italic":False,"color":"gray"},{"text":"break cables and rotates machines while sneaking","italic":False,"color":"gray"}]},
		"slot_unlocker": {"id": CUSTOM_ITEM_VANILLA, CATEGORY: MISC, RESULT_OF_CRAFTING: [{"type":"crafting_shaped","result_count":1,"category":"equipment","shape":["QBQ","NGN","NIN"],"ingredients":{"Q":ingr_repr("minecraft:quartz"),"B":ingr_repr("minecraft:breeze_rod"),"N":ingr_repr("minecraft:gold_nugget"),"G":ingr_repr("minecraft:raw_gold_block"),"I":ingr_repr("minecraft:iron_block")}}], "lore": [{"text":"Unlocks a blocked slot in a machine","italic":False,"color":"gray"}]},
		"battery_switcher": {
			"id": "minecraft:warped_fungus_on_a_stick", CATEGORY: MISC, "unbreakable": {"show_in_tooltip": False},
			RESULT_OF_CRAFTING:[{"type":"crafting_shaped","result_count":1,"category":"equipment","shape":[" RS"," SB","S  "],"ingredients":{"R":ingr_repr("minecraft:redstone"),"S":ingr_repr("simplunium_ingot", NAMESPACE),"B":ingr_repr("minecraft:stone_button")}}],
			"lore": [{"text":"Allows you to switch batteries states","italic":False,"color":"gray"},{"text":"[Input / Output / Both]","italic":False,"color":"gray"},{"text":"[Hold in offhand for passive use]","italic":False,"color":"white"},{"text":"[Right click on a battery to switch]","italic":False,"color":"white"}],
			OVERRIDE_MODEL: {"parent":"item/handheld"},
		},
		"battery_switcher_both": {"id": "minecraft:warped_fungus_on_a_stick", OVERRIDE_MODEL: {"parent":"item/handheld"}, "custom_data": {NAMESPACE: {"battery_switcher": True}}},
		"battery_switcher_output": {"id": "minecraft:warped_fungus_on_a_stick", OVERRIDE_MODEL: {"parent":"item/handheld"}, "custom_data": {NAMESPACE: {"battery_switcher": True}}},
		"battery_switcher_input": {"id": "minecraft:warped_fungus_on_a_stick", OVERRIDE_MODEL: {"parent":"item/handheld"}, "custom_data": {NAMESPACE: {"battery_switcher": True}}},

		"simple_battery": {"id": CUSTOM_BLOCK_VANILLA, CATEGORY: "energy", "custom_data": {"energy": {"storage":0, "max_storage": 10000}},			RESULT_OF_CRAFTING:[{"type":"crafting_shaped","result_count":1,"category":"misc","shape":["CCC","CRC","III"],"ingredients":{"C":ingr_repr("minecraft:copper_block"),"R":ingr_repr("minecraft:redstone"),"I":ingr_repr("minecraft:iron_ingot")}}]},
		"advanced_battery": {"id": CUSTOM_BLOCK_VANILLA, CATEGORY: "energy", "custom_data": {"energy": {"storage":0, "max_storage": 25000}},		RESULT_OF_CRAFTING:[{"type":"crafting_shaped","result_count":1,"category":"misc","shape":["GGG","GXG","SSS"],"ingredients":{"G":ingr_repr("minecraft:gold_block"),"X":ingr_repr("simple_battery", NAMESPACE),"S":ingr_repr("simplunium_ingot", NAMESPACE)}}]},
		"elite_battery": {"id": CUSTOM_BLOCK_VANILLA, CATEGORY: "energy", "custom_data": {"energy": {"storage":0, "max_storage": 50000}},			RESULT_OF_CRAFTING:[{"type":"crafting_shaped","result_count":1,"category":"misc","shape":["RRR","RXR","SSS"],"ingredients":{"R":ingr_repr("minecraft:redstone_block"),"X":ingr_repr("advanced_battery", NAMESPACE),"S":ingr_repr("simplunium_block", NAMESPACE)}}]},
		"creative_battery": {"id": CUSTOM_BLOCK_VANILLA, "custom_data": {"energy": {"storage":2000000000, "max_storage": 2147483647}}},

		"cauldron_generator": {
			"id": CUSTOM_BLOCK_VANILLA, CATEGORY: "energy", "custom_data": {"energy": {"generation":5, "max_storage": 500}},						RESULT_OF_CRAFTING:[{"type":"crafting_shaped","result_count":1,"category":"misc","shape":["I I","IRI","III"],"ingredients":{"I":ingr_repr("minecraft:iron_ingot"),"R":ingr_repr("minecraft:redstone")}}],
			OVERRIDE_MODEL: {"parent":"block/cauldron", "textures": {"side": f"{NAMESPACE}:item/cauldron_generator_side", "top": f"{NAMESPACE}:item/cauldron_generator_top", "bottom": f"{NAMESPACE}:item/cauldron_generator_bottom"},
			"display":{
				"gui":{"rotation":[30,225,0],"translation":[0,0,0],"scale":[0.625,0.625,0.625]},
				"ground":{"rotation":[0,0,0],"translation":[0,3,0],"scale":[0.25,0.25,0.25]},
				"fixed":{"rotation":[0,0,0],"translation":[0,0,0],"scale":[0.5,0.5,0.5]},
				"thirdperson_righthand":{"rotation":[75,45,0],"translation":[0,2.5,0],"scale":[0.375,0.375,0.375]},
				"firstperson_righthand":{"rotation":[0,45,0],"translation":[0,0,0],"scale":[0.40,0.40,0.40]},
				"firstperson_lefthand":{"rotation":[0,225,0],"translation":[0,0,0],"scale":[0.40,0.40,0.40]}
		}}},
		"furnace_generator": {"id": CUSTOM_BLOCK_VANILLA, CATEGORY: "energy", "custom_data": {"energy": {"generation":10, "max_storage": 800}},		RESULT_OF_CRAFTING:[{"type":"crafting_shaped","result_count":1,"category":"misc","shape":["III","RFR","SSS"],"ingredients":{"I":ingr_repr("minecraft:iron_block"),"R":ingr_repr("minecraft:redstone"),"F":ingr_repr("minecraft:furnace"),"S":ingr_repr("minecraft:stone")}}]},
		"solar_panel": {
			"id": CUSTOM_BLOCK_VANILLA, CATEGORY: "energy", "custom_data": {"energy": {"generation":4, "max_storage": 600}},						RESULT_OF_CRAFTING:[{"type":"crafting_shaped","result_count":1,"category":"misc","shape":["LLL","LDL","III"],"ingredients":{"L":ingr_repr("minecraft:lapis_lazuli"),"D":ingr_repr("minecraft:daylight_detector"),"I":ingr_repr("minecraft:iron_block")}}],
			OVERRIDE_MODEL: {"parent":"block/daylight_detector", "textures": {"side": f"{NAMESPACE}:item/solar_panel_side", "top": f"{NAMESPACE}:item/solar_panel_top"}},
		},

		"electric_furnace": {"id": CUSTOM_BLOCK_VANILLA, CATEGORY: "energy", "custom_data": {"energy": {"usage":20, "max_storage": 1600}},				RESULT_OF_CRAFTING:[{"type":"crafting_shaped","result_count":1,"category":"misc","shape":["LLL","LFL","III"],"ingredients":{"L":ingr_repr("minecraft:lapis_lazuli"),"F":ingr_repr("minecraft:furnace"),"I":ingr_repr("minecraft:iron_block")}}]},
		"electric_smelter": {"id": CUSTOM_BLOCK_VANILLA, CATEGORY: "energy", "custom_data": {"energy": {"usage":100, "max_storage": 8000}},				RESULT_OF_CRAFTING:[{"type":"crafting_shaped","result_count":1,"category":"misc","shape":["III","IFI","BBB"],"ingredients":{"I":ingr_repr("simplunium_ingot", NAMESPACE),"F":ingr_repr("electric_furnace", NAMESPACE),"B":ingr_repr("simplunium_block", NAMESPACE)}}]},
		"electric_brewing_stand": {
			"id": CUSTOM_BLOCK_VANILLA, CATEGORY: "energy", "custom_data": {"energy": {"usage":40, "max_storage": 2400}},	RESULT_OF_CRAFTING:[{"type":"crafting_shaped","result_count":1,"category":"misc","shape":["III","IBI","LLL"],"ingredients":{"I":ingr_repr("simplunium_ingot", NAMESPACE),"B":ingr_repr("minecraft:brewing_stand"),"L":ingr_repr("minecraft:lapis_block")}}],
			OVERRIDE_MODEL: {"parent":"block/brewing_stand","textures":{"base":f"{NAMESPACE}:item/electric_brewing_stand_base","stand":f"{NAMESPACE}:item/electric_brewing_stand"},
			"display":{
				"gui":{"rotation":[30,225,0],"translation":[0,0,0],"scale":[0.625,0.625,0.625]},
				"ground":{"rotation":[0,0,0],"translation":[0,3,0],"scale":[0.25,0.25,0.25]},
				"fixed":{"rotation":[0,0,0],"translation":[0,0,0],"scale":[0.5,0.5,0.5]},
				"thirdperson_righthand":{"rotation":[75,45,0],"translation":[0,2.5,0],"scale":[0.375,0.375,0.375]},
				"firstperson_righthand":{"rotation":[0,45,0],"translation":[0,0,0],"scale":[0.40,0.40,0.40]},
				"firstperson_lefthand":{"rotation":[0,225,0],"translation":[0,0,0],"scale":[0.40,0.40,0.40]}
		}}},
		"pulverizer": {"id": CUSTOM_BLOCK_VANILLA, CATEGORY: "energy", "custom_data": {"energy": {"usage":120, "max_storage": 6400}},					RESULT_OF_CRAFTING:[{"type":"crafting_shaped","result_count":1,"category":"misc","shape":["DDD","IFI","CCC"],"ingredients":{"D":ingr_repr("minecraft:diamond"),"I":ingr_repr("simplunium_ingot", NAMESPACE),"F":ingr_repr("electric_furnace", NAMESPACE),"C":ingr_repr("minecraft:copper_block")}}]},

		"simple_cable": {
			"id": CUSTOM_BLOCK_HEAD, CATEGORY: "energy", "custom_data": {"energy": {"transfer":40}},
			RESULT_OF_CRAFTING:[
				{"type":"crafting_shaped","result_count":1,"category":"misc","group":"simple_cable","shape":["ICI","IOI","ICI"],"ingredients":{"I":ingr_repr("minecraft:iron_ingot"),"C":ingr_repr("minecraft:copper_ingot"),"O":ingr_repr("minecraft:coal")}},
				{"type":"crafting_shaped","result_count":1,"category":"misc","group":"simple_cable","shape":["ICI","IOI","ICI"],"ingredients":{"I":ingr_repr("minecraft:iron_ingot"),"C":ingr_repr("minecraft:copper_ingot"),"O":ingr_repr("minecraft:charcoal")}},
				{"type":"crafting_shaped","result_count":1,"category":"misc","group":"simple_cable","shape":["III","COC","III"],"ingredients":{"I":ingr_repr("minecraft:iron_ingot"),"C":ingr_repr("minecraft:copper_ingot"),"O":ingr_repr("minecraft:coal")}},
				{"type":"crafting_shaped","result_count":1,"category":"misc","group":"simple_cable","shape":["III","COC","III"],"ingredients":{"I":ingr_repr("minecraft:iron_ingot"),"C":ingr_repr("minecraft:copper_ingot"),"O":ingr_repr("minecraft:charcoal")}},
			],
			"profile": {
				"id": [-709098200,1001541428,-2043264882,-430220135],
				"properties":[{"name":"textures", "value":"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTE2MTcxZjY3ZGUxNzQxMzA4ZTUxYzNmNTBkODE1M2YzMmIzNDljNDYwODgxYzZjODM5ZTYwMTk1NDM1ODliMSJ9fX0="}],
			},
		},
		"advanced_cable": {
			"id": CUSTOM_BLOCK_HEAD, CATEGORY: "energy", "custom_data": {"energy": {"transfer":120}},
			RESULT_OF_CRAFTING:[
				{"type":"crafting_shapeless","result_count":1,"category":"misc","ingredients":[ingr_repr("simple_cable", NAMESPACE)] + 8*[ingr_repr("minecraft:lapis_lazuli")]},
			],
			"profile": {
				"id": [-709098200,1001541428,-2043264882,-430220135],
				"properties":[{"name":"textures", "value":"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzlmNjNlZGIwMDA4NWM1Mzk0Y2FmZjg2Yzk3ZmU4NGQxYmUwMGEwMDcxMDE4Y2YwOTAwZTdiNjMwYTY2Y2VlZSJ9fX0="}],
			},
		},
		"elite_cable": {
			"id": CUSTOM_BLOCK_HEAD, CATEGORY: "energy", "custom_data": {"energy": {"transfer":240}},
			RESULT_OF_CRAFTING:[
				{"type":"crafting_shapeless","result_count":1,"category":"misc","ingredients":[ingr_repr("advanced_cable", NAMESPACE)] + 4*[ingr_repr("minecraft:redstone_block")]},
			],
			"profile": {
				"id": [-709098200,1001541428,-2043264882,-430220135],
				"properties":[{"name":"textures", "value":"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjlmMzJjOWNkNTU2MzJmNjEzZjRhMDU2ZGEyYzJhYTkzZjMwOTk2ZGY2NzMxZTcyYmM1NDA4NzA4ZGE5MWYzOCJ9fX0="}],
			},
		},
	}

	# Custom blocks
	database_additions["simplunium_block"] = {VANILLA_BLOCK: {"id": "minecraft:iron_block", "apply_facing": False}}
	database_additions["raw_simplunium_block"] = {VANILLA_BLOCK: {"id": "minecraft:raw_iron_block", "apply_facing": False}}
	database_additions["simple_battery"][VANILLA_BLOCK] = {"id": "minecraft:copper_block", "apply_facing": False}
	database_additions["advanced_battery"][VANILLA_BLOCK] = {"id": "minecraft:gold_block", "apply_facing": False}
	database_additions["elite_battery"][VANILLA_BLOCK] = {"id": "minecraft:iron_block", "apply_facing": False}
	database_additions["creative_battery"][VANILLA_BLOCK] = {"id": "minecraft:iron_block", "apply_facing": False}
	database_additions["cauldron_generator"][VANILLA_BLOCK] = {"id": "minecraft:cauldron", "apply_facing": False}
	database_additions["furnace_generator"][VANILLA_BLOCK] = {"id": "minecraft:furnace", "apply_facing": True}
	database_additions["solar_panel"][VANILLA_BLOCK] = {"id": "minecraft:daylight_detector", "apply_facing": False}
	database_additions["electric_furnace"][VANILLA_BLOCK] = {"id": "minecraft:furnace", "apply_facing": True}
	database_additions["electric_smelter"][VANILLA_BLOCK] = {"id": "minecraft:furnace", "apply_facing": True}
	database_additions["electric_brewing_stand"][VANILLA_BLOCK] = {"id": "minecraft:brewing_stand", "apply_facing": False}
	database_additions["pulverizer"][VANILLA_BLOCK] = {"id": "minecraft:barrel", "apply_facing": True}
	database_additions["simple_cable"][VANILLA_BLOCK] = {"apply_facing": False, "id": "minecraft:player_head{profile:" + str(database_additions["simple_cable"]["profile"]) + "}"}
	database_additions["advanced_cable"][VANILLA_BLOCK] = {"apply_facing": False, "id": "minecraft:player_head{profile:" + str(database_additions["advanced_cable"]["profile"]) + "}"}
	database_additions["elite_cable"][VANILLA_BLOCK] = {"apply_facing": False, "id": "minecraft:player_head{profile:" + str(database_additions["elite_cable"]["profile"]) + "}"}

	database_additions["manual"] = {
		"id": "minecraft:written_book", "category": MISC,
		RESULT_OF_CRAFTING: [
			# Put a book and a steel ingot in the crafting grid to get the manual
			{"type":"crafting_shapeless","result_count":1,"group":"manual","category":MISC,"ingredients": [ingr_repr("minecraft:book"), ingr_repr("simplunium_ingot", NAMESPACE)]},

			# Put the manual in the crafting grid to get the manual back (update the manual)
			{"type":"crafting_shapeless","result_count":1,"group":"manual","category":MISC,"ingredients": [ingr_repr("manual", NAMESPACE)]},
		],
	}

	# Add lore to energy-related blocks
	for item_data in database_additions.values():
		if "energy" in item_data.get("custom_data", {}):
			item_data["lore"] = item_data.get("lore", []) + create_energy_lore(item_data["custom_data"]["energy"])

	# Update the database with new data
	for k, v in database_additions.items():
		if k in database:
			database[k].update(v)
		else:
			database[k] = v
	stp.info("Database additions loaded")
	return database

