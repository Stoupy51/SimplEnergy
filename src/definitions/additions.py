
# ruff: noqa: E501
# Imports
from stewbeet import (
	CATEGORY,
	CUSTOM_BLOCK_ALTERNATIVE,
	CUSTOM_BLOCK_HEAD,
	CUSTOM_BLOCK_VANILLA,
	CUSTOM_ITEM_VANILLA,
	NO_SILK_TOUCH_DROP,
	OVERRIDE_MODEL,
	RESULT_OF_CRAFTING,
	VANILLA_BLOCK,
	WIKI_COMPONENT,
	JsonDict,
	Mem,
	TextComponent,
	ingr_repr,
)
from stouputils.print import info

# Constants
ORE_WIKI: TextComponent = [
	{"text":"Primary ore for energy system components.","color":"yellow"},
	{"text":"\nFound in the Overworld between Y=0 and Y=50","color":"gray"},
	{"text":"\nDeepslate variant generates below Y=0","color":"gray"},
	{"text":"\nSmelt into Simplunium Ingots for crafting","color":"gray"},
	{"text":"\nUsed to create: Batteries, Generators, Machines, Tools","color":"gray"}
]
MECHANIZATION_COMPATIBILITY: TextComponent = [
	{"text":"Mechanization Integration Item","color":"yellow"},
	{"text":"\nRequires Mechanization datapack to be installed for recipes to function properly","color":"gray"}
]


def main_additions() -> None:
	MISC: str = "miscellaneous"
	ns: str = Mem.ctx.project_id

	# Give Additional data for every item
	additions: dict[str, JsonDict] = {

		# Miscellaneous items
		"multimeter": {
			"id": "minecraft:warped_fungus_on_a_stick", CATEGORY: MISC,
			"tooltip_display": {"hidden_components": ["minecraft:unbreakable"]},
			"lore": [{"text":"Allows you to analyse machines","italic":False,"color":"gray"},{"text":"to get their energy information","italic":False,"color":"gray"},{"text":"[Hold in offhand for passive use]","italic":False,"color":"white"}],
			RESULT_OF_CRAFTING:[{"type":"crafting_shaped","result_count":1,"category":"equipment","shape":["II","CC","CC"],"ingredients":{"I":ingr_repr("minecraft:iron_ingot"),"C":ingr_repr("minecraft:copper_ingot")}}],
			OVERRIDE_MODEL: {"parent":"item/handheld"},
			WIKI_COMPONENT: [
				{"text":"A diagnostic tool for energy systems.","color":"yellow"},
				{"text":"\nHold in your offhand to automatically scan machines when looking at them.","color":"gray"},
			],
		},
		"wrench": {
			"id": "minecraft:warped_fungus_on_a_stick", CATEGORY: MISC,
			"tooltip_display": {"hidden_components": ["minecraft:unbreakable"]},
			RESULT_OF_CRAFTING:[{"type":"crafting_shaped","result_count":1,"category":"equipment","shape":[" I "," II", "I  "],"ingredients":{"I":ingr_repr("simplunium_ingot", ns)}}], "lore": [{"text":"Provides you the ability to instantly","italic":False,"color":"gray"},{"text":"break cables and rotates machines while sneaking","italic":False,"color":"gray"}],
			WIKI_COMPONENT: [
				{"text":"Essential tool for energy system maintenance.","color":"yellow"},
				{"text":"\nSneak + Right Click: Rotate machines","color":"gray"},
				{"text":"\nInstantly breaks cables for easy reconfiguration","color":"gray"},
			],
		},
		"slot_unlocker": {
			"id": CUSTOM_ITEM_VANILLA, CATEGORY: MISC,
			RESULT_OF_CRAFTING: [{"type":"crafting_shaped","result_count":1,"category":"equipment","shape":["QBQ","NGN","NIN"],"ingredients":{"Q":ingr_repr("minecraft:quartz"),"B":ingr_repr("minecraft:breeze_rod"),"N":ingr_repr("minecraft:gold_nugget"),"G":ingr_repr("minecraft:raw_gold_block"),"I":ingr_repr("minecraft:iron_block")}}], "lore": [{"text":"Unlocks a blocked slot in a machine","italic":False,"color":"gray"}],
			WIKI_COMPONENT: [
				{"text":"Unlocks blocked machine inventory slots.","color":"yellow"},
				{"text":"\nSome machines may have locked slots that require this tool to access (e.g. Pulverizer).","color":"gray"},
			],
		},
		"battery_switcher": {
			"id": "minecraft:warped_fungus_on_a_stick", CATEGORY: MISC,
			"tooltip_display": {"hidden_components": ["minecraft:unbreakable"]},
			"lore": [{"text":"Allows you to switch batteries states","italic":False,"color":"gray"},{"text":"[Input / Output / Both]","italic":False,"color":"gray"},{"text":"[Hold in offhand for passive use]","italic":False,"color":"white"},{"text":"[Right click on a battery to switch]","italic":False,"color":"white"}],
			RESULT_OF_CRAFTING:[{"type":"crafting_shaped","result_count":1,"category":"equipment","shape":[" RS"," SB","S  "],"ingredients":{"R":ingr_repr("minecraft:redstone"),"S":ingr_repr("simplunium_ingot", ns),"B":ingr_repr("minecraft:stone_button")}}],
			OVERRIDE_MODEL: {"parent":"item/handheld"},
			WIKI_COMPONENT: [
				{"text":"Controls battery input/output modes.","color":"yellow"},
				{"text":"\nModes: Input Only, Output Only, Both","color":"gray"},
				{"text":"\nRight-click on batteries to cycle modes","color":"gray"},
			],
		},
		"battery_switcher_both": {"id": "minecraft:warped_fungus_on_a_stick", OVERRIDE_MODEL: {"parent":"item/handheld"}, "custom_data": {ns: {"battery_switcher": True}}},
		"battery_switcher_output": {"id": "minecraft:warped_fungus_on_a_stick", OVERRIDE_MODEL: {"parent":"item/handheld"}, "custom_data": {ns: {"battery_switcher": True}}},
		"battery_switcher_input": {"id": "minecraft:warped_fungus_on_a_stick", OVERRIDE_MODEL: {"parent":"item/handheld"}, "custom_data": {ns: {"battery_switcher": True}}},
		"machine_block": {
			"id": CUSTOM_BLOCK_VANILLA, CATEGORY: "energy",
			RESULT_OF_CRAFTING:[
				{"type":"crafting_shaped","result_count":1,"category":"misc","shape":["SSS","SCS","III"],"ingredients":{"S":ingr_repr("minecraft:stone"),"C":ingr_repr("minecraft:copper_block"),"I":ingr_repr("minecraft:iron_block")}},
				{"type":"crafting_shaped","result_count":1,"category":"misc","shape":["SSS","SIS","CCC"],"ingredients":{"S":ingr_repr("minecraft:stone"),"C":ingr_repr("minecraft:copper_block"),"I":ingr_repr("minecraft:iron_block")}},
			],
			WIKI_COMPONENT: [
				{"text":"Basic machine block for energy systems.","color":"yellow"},
				{"text":"\nUsed as a base for most machines and generators","color":"gray"},
			],
		},

		# Batteries
		"simple_battery": {
			"id": CUSTOM_BLOCK_VANILLA, CATEGORY: "energy", "custom_data": {"energy": {"storage":0, "max_storage": 10000}},
			RESULT_OF_CRAFTING:[
				{"type":"crafting_shaped","result_count":1,"category":"misc","shape":["CCC","CRC","III"],"ingredients":{"C":ingr_repr("minecraft:copper_block"),"R":ingr_repr("minecraft:redstone"),"I":ingr_repr("minecraft:iron_ingot")}},
				{"type":"crafting_shaped","result_count":1,"category":"misc","shape":["CCC","CIC","RRR"],"ingredients":{"C":ingr_repr("minecraft:copper_block"),"R":ingr_repr("minecraft:redstone_block"),"I":ingr_repr("minecraft:iron_ingot")}}
			],
			WIKI_COMPONENT: [
				{"text":"Basic energy storage device.","color":"yellow"},
				{"text":"\nStores up to 10,000 kJ","color":"gray"},
				{"text":"\nModes: Input Only, Output Only, Both (use Battery Switcher)","color":"gray"},
				{"text":"\nBreaking the battery preserves stored energy","color":"gray"},
				{"text":"\nBalances energy storage with adjacent simple batteries","color":"gray"},
			],
		},
		"advanced_battery": {
			"id": CUSTOM_BLOCK_VANILLA, CATEGORY: "energy", "custom_data": {"energy": {"storage":0, "max_storage": 25000}},
			RESULT_OF_CRAFTING:[
				{"type":"crafting_shaped","result_count":1,"category":"misc","shape":["GGG","GXG","CCC"],"ingredients":{"G":ingr_repr("minecraft:gold_block"),"X":ingr_repr("simple_battery", ns),"C":ingr_repr("minecraft:copper_block")}},
				{"type":"crafting_shaped","result_count":1,"category":"misc","shape":["GGG","GXG","III"],"ingredients":{"G":ingr_repr("minecraft:gold_block"),"X":ingr_repr("simple_battery", ns),"I":ingr_repr("minecraft:iron_block")}}
			],
			WIKI_COMPONENT: [
				{"text":"Advanced energy storage device.","color":"yellow"},
				{"text":"\nStores up to 25,000 kJ","color":"gray"},
				{"text":"\nModes: Input Only, Output Only, Both (use Battery Switcher)","color":"gray"},
				{"text":"\nBreaking the battery preserves stored energy","color":"gray"},
				{"text":"\nBalances energy storage with adjacent advanced batteries","color":"gray"},
			],
		},
		"elite_battery": {
			"id": CUSTOM_BLOCK_VANILLA, CATEGORY: "energy", "custom_data": {"energy": {"storage":0, "max_storage": 50000}},
			RESULT_OF_CRAFTING:[
				{"type":"crafting_shaped","result_count":1,"category":"misc","shape":["RRR","RXR","SSS"],"ingredients":{"R":ingr_repr("minecraft:redstone_block"),"X":ingr_repr("advanced_battery", ns),"S":ingr_repr("simplunium_block", ns)}},
				{"type":"crafting_shaped","result_count":1,"category":"misc","shape":["RRR","SXS","III"],"ingredients":{"R":ingr_repr("minecraft:redstone_block"),"X":ingr_repr("advanced_battery", ns),"S":ingr_repr("simplunium_block", ns),"I":ingr_repr("minecraft:iron_block")}}
			],
			WIKI_COMPONENT: [
				{"text":"Elite energy storage device.","color":"yellow"},
				{"text":"\nStores up to 50,000 kJ","color":"gray"},
				{"text":"\nModes: Input Only, Output Only, Both (use Battery Switcher)","color":"gray"},
				{"text":"\nBreaking the battery preserves stored energy","color":"gray"},
				{"text":"\nBalances energy storage with adjacent elite batteries","color":"gray"},
			],
		},
		"creative_battery": {"id": CUSTOM_BLOCK_VANILLA, "custom_data": {"energy": {"storage":2000000000, "max_storage": 2147483647}}},

		# Energy generators
		"cauldron_generator": {
			"id": CUSTOM_BLOCK_VANILLA, CATEGORY: "energy", "custom_data": {"energy": {"generation":5, "max_storage": 500}},
			RESULT_OF_CRAFTING:[
				{"type":"crafting_shaped","result_count":1,"category":"misc","shape":["I I","IRI","III"],"ingredients":{"I":ingr_repr("minecraft:iron_ingot"),"R":ingr_repr("minecraft:redstone")}},
				{"type":"crafting_shapeless","result_count":1,"category":"misc","ingredients":[ingr_repr("minecraft:cauldron"),ingr_repr("minecraft:redstone"),ingr_repr("minecraft:iron_ingot")]},
			],
			OVERRIDE_MODEL: {"parent":"block/cauldron", "textures": {"side": f"{ns}:item/cauldron_generator_side", "top": f"{ns}:item/cauldron_generator_top", "bottom": f"{ns}:item/cauldron_generator_bottom"},
			"display":{
				"gui":{"rotation":[30,225,0],"translation":[0,0,0],"scale":[0.625,0.625,0.625]},
				"ground":{"rotation":[0,0,0],"translation":[0,3,0],"scale":[0.25,0.25,0.25]},
				"fixed":{"rotation":[0,0,0],"translation":[0,0,0],"scale":[0.5,0.5,0.5]},
				"thirdperson_righthand":{"rotation":[75,45,0],"translation":[0,2.5,0],"scale":[0.375,0.375,0.375]},
				"firstperson_righthand":{"rotation":[0,45,0],"translation":[0,0,0],"scale":[0.40,0.40,0.40]},
				"firstperson_lefthand":{"rotation":[0,225,0],"translation":[0,0,0],"scale":[0.40,0.40,0.40]}
			}},
			WIKI_COMPONENT: [
				{"text":"Basic water-powered generator.","color":"yellow"},
				{"text":"\nRequires water to operate - fill the cauldron with water","color":"gray"},
				{"text":"\nBalances energy storage with adjacent cauldron generators","color":"gray"},
			],
		},
		"furnace_generator": {
			"id": CUSTOM_BLOCK_VANILLA, CATEGORY: "energy", "custom_data": {"energy": {"generation":10, "max_storage": 800}},
			RESULT_OF_CRAFTING:[
				{"type":"crafting_shaped","result_count":1,"category":"misc","shape":["III","RMR","SSS"],"ingredients":{"I":ingr_repr("minecraft:iron_ingot"),"R":ingr_repr("minecraft:redstone"),"M":ingr_repr("machine_block", ns),"S":ingr_repr("minecraft:stone")}},
				{"type":"crafting_shaped","result_count":1,"category":"misc","shape":["RRR","IMI","SSS"],"ingredients":{"I":ingr_repr("minecraft:iron_ingot"),"R":ingr_repr("minecraft:redstone"),"M":ingr_repr("machine_block", ns),"S":ingr_repr("minecraft:stone")}},
			],
			WIKI_COMPONENT: [
				{"text":"Fuel-burning energy generator.","color":"yellow"},
				{"text":"\nConsumes any furnace fuel to generate energy","color":"gray"},
			],
		},
		"redstone_generator": {
			"id": CUSTOM_BLOCK_VANILLA, CATEGORY: "energy", "custom_data": {"energy": {"generation":80, "max_storage": 6400}},
			RESULT_OF_CRAFTING:[
				{"type":"crafting_shaped","result_count":1,"category":"misc","shape":["RRR","RFR","SSS"],"ingredients":{"R":ingr_repr("minecraft:redstone_block"),"F":ingr_repr("furnace_generator", ns),"S":ingr_repr("simplunium_block", ns)}},
				{"type":"crafting_shaped","result_count":1,"category":"misc","shape":["RRR","SFS","III"],"ingredients":{"R":ingr_repr("minecraft:redstone_block"),"F":ingr_repr("furnace_generator", ns),"S":ingr_repr("simplunium_block", ns),"I":ingr_repr("minecraft:iron_block")}},
			],
			WIKI_COMPONENT: [
				{"text":"High-output redstone generator.","color":"yellow"},
				{"text":"\nAdvanced generator powered by redstone dust and blocks","color":"gray"},
			],
		},
		"heat_generator": {
			"id": CUSTOM_BLOCK_VANILLA, CATEGORY: "energy", "custom_data": {"energy": {"generation":20, "max_storage": 1600}},
			RESULT_OF_CRAFTING:[
				{"type":"crafting_shaped","result_count":1,"category":"misc","shape":["IGI","GAG","IGI"],"ingredients":{"I":ingr_repr("minecraft:iron_block"),"G":ingr_repr("minecraft:glass"),"A":ingr_repr("minecraft:netherite_scrap")}},
				{"type":"crafting_shaped","result_count":1,"category":"misc","shape":["GIG","IAI","GIG"],"ingredients":{"I":ingr_repr("minecraft:iron_block"),"G":ingr_repr("minecraft:glass"),"A":ingr_repr("minecraft:netherite_scrap")}},
				{"type":"crafting_shaped","result_count":1,"category":"misc","shape":["IGI","GAG","IGI"],"ingredients":{"I":ingr_repr("minecraft:iron_block"),"G":ingr_repr("minecraft:glass"),"A":ingr_repr("minecraft:ancient_debris")}},
				{"type":"crafting_shaped","result_count":1,"category":"misc","shape":["GIG","IAI","GIG"],"ingredients":{"I":ingr_repr("minecraft:iron_block"),"G":ingr_repr("minecraft:glass"),"A":ingr_repr("minecraft:ancient_debris")}},
			],
			WIKI_COMPONENT: [
				{"text":"Heat-powered energy generator.","color":"yellow"},
				{"text":"\nMust be placed directly adjacent to lava to operate","color":"gray"},
				{"text":"\nBalances energy storage with adjacent heat generators","color":"gray"},
			],
		},
		"wind_turbine": {
			"id": CUSTOM_BLOCK_VANILLA, CATEGORY: "energy", "custom_data": {"energy": {"generation":20, "max_storage": 800}},
			RESULT_OF_CRAFTING:[
				{"type":"crafting_shaped","result_count":1,"category":"misc","shape":[" I ","ICI","BBB"],"ingredients":{"I":ingr_repr("minecraft:iron_ingot"),"C":ingr_repr("minecraft:copper_block"),"B":ingr_repr("minecraft:iron_block")}},
				{"type":"crafting_shaped","result_count":1,"category":"misc","shape":[" I ","III","BBB"],"ingredients":{"I":ingr_repr("minecraft:iron_ingot"),"B":ingr_repr("minecraft:iron_block")}},
			],
			OVERRIDE_MODEL: {"parent":"block/cube_all","textures":{"all":f"{ns}:item/wind_turbine_side","0":f"{ns}:item/wind_turbine_blades","1":"minecraft:block/iron_block","2":f"{ns}:item/wind_turbine_side","particle":f"{ns}:item/wind_turbine_blades"},"elements":[{"name":"blades","from":[1,4,7.5],"to":[15,18,7.5],"faces":{"north":{"uv":[0,0,16,16],"texture":"#0","cullface":"north"},"south":{"uv":[16,0,0,16],"texture":"#0","cullface":"south"}}},{"from":[0,0,0],"to":[16,3.025,16],"faces":{"north":{"uv":[0,13,16,16],"texture":"#2","cullface":"north"},"east":{"uv":[0,13,16,16],"texture":"#2","cullface":"north"},"south":{"uv":[0,13,16,16],"texture":"#2","cullface":"north"},"west":{"uv":[0,13,16,16],"texture":"#2","cullface":"north"},"up":{"uv":[0,0,16,16],"texture":"#1","cullface":"north"},"down":{"uv":[0,0,16,16],"texture":"#1","cullface":"north"}}},{"from":[7,3,7.51],"to":[9,13,8.51],"faces":{"north":{"uv":[0,3,16,13],"texture":"#1","cullface":"north"},"east":{"uv":[0,3,16,13],"texture":"#1","cullface":"north"},"south":{"uv":[0,3,16,13],"texture":"#1","cullface":"north"},"west":{"uv":[0,3,16,13],"texture":"#1","cullface":"north"},"up":{"uv":[12,14,15,15],"texture":"#1","cullface":"north"},"down":{"uv":[12,14,15,15],"texture":"#1","cullface":"north"}}}],"display":{"head":{"translation":[0,-30.42,0],"scale":[1.605,1.605,1.605]},"fixed":{"rotation":[-90,0,0],"translation":[0,0,-16.05],"scale":[2.0075,2.0075,2.0075]}}},
			WIKI_COMPONENT: [
				{"text":"Altitude-dependent wind generator.","color":"yellow"},
				{"text":"\nHigher altitude increases energy generation","color":"gray"},
				{"text":"\n(0 kW at y=50, 2 kW at y=60, ..., 20 kW at y=150)","color":"gray"},
			],
		},
		"solar_panel": {
			"id": CUSTOM_BLOCK_VANILLA, CATEGORY: "energy", "custom_data": {"energy": {"generation":4, "max_storage": 600}},
			RESULT_OF_CRAFTING:[
				{"type":"crafting_shaped","result_count":1,"category":"misc","shape":["LLL","LDL","III"],"ingredients":{"L":ingr_repr("minecraft:lapis_lazuli"),"D":ingr_repr("minecraft:daylight_detector"),"I":ingr_repr("minecraft:iron_block")}},
				{"type":"crafting_shaped","result_count":1,"category":"misc","shape":["LLL","GDG","III"],"ingredients":{"L":ingr_repr("minecraft:lapis_lazuli"),"G":ingr_repr("minecraft:glass"),"D":ingr_repr("minecraft:daylight_detector"),"I":ingr_repr("minecraft:iron_block")}},
				{"type":"crafting_shaped","result_count":1,"category":"misc","shape":["LLL","LDL","III"],"ingredients":{"L":ingr_repr("minecraft:blue_stained_glass"),"D":ingr_repr("minecraft:daylight_detector"),"I":ingr_repr("minecraft:iron_block")}},
				{"type":"crafting_shaped","result_count":1,"category":"misc","shape":["LLL","LDL","III"],"ingredients":{"L":ingr_repr("minecraft:blue_stained_glass_pane"),"D":ingr_repr("minecraft:daylight_detector"),"I":ingr_repr("minecraft:iron_block")}},
			],
			OVERRIDE_MODEL: {"parent":"block/daylight_detector", "textures": {"side": f"{ns}:item/solar_panel_side", "top": f"{ns}:item/solar_panel_top"}},
			WIKI_COMPONENT: [
				{"text":"Daylight-powered generator.","color":"yellow"},
				{"text":"\nRequires direct sunlight to operate","color":"gray"},
				{"text":"\nBalances energy storage with adjacent solar panels","color":"gray"},
			],
		},

		# Machines
		"electric_furnace": {
			"id": CUSTOM_BLOCK_VANILLA, CATEGORY: "energy", "custom_data": {"energy": {"usage":20, "max_storage": 1600}},
			RESULT_OF_CRAFTING:[
				{"type":"crafting_shaped","result_count":1,"category":"misc","shape":["LLL","LML","III"],"ingredients":{"L":ingr_repr("minecraft:lapis_lazuli"),"M":ingr_repr("machine_block", ns),"I":ingr_repr("minecraft:iron_block")}},
				{"type":"crafting_shaped","result_count":1,"category":"misc","shape":["LLL","LML","CCC"],"ingredients":{"L":ingr_repr("minecraft:lapis_lazuli"),"M":ingr_repr("machine_block", ns),"C":ingr_repr("minecraft:copper_block")}}
			],
			WIKI_COMPONENT: [
				{"text":"Electric-powered smelting machine.","color":"yellow"},
				{"text":"\nSmelts items using electricity instead of fuel (1.5x faster)","color":"gray"},
			],
		},
		"electric_smelter": {
			"id": CUSTOM_BLOCK_VANILLA, CATEGORY: "energy", "custom_data": {"energy": {"usage":100, "max_storage": 8000}},
			RESULT_OF_CRAFTING:[{"type":"crafting_shaped","result_count":1,"category":"misc","shape":["SSS","SFS","BBB"],"ingredients":{"S":ingr_repr("simplunium_ingot", ns),"F":ingr_repr("electric_furnace", ns),"B":ingr_repr("simplunium_block", ns)}}],
			WIKI_COMPONENT: [
				{"text":"Advanced electric smelting station.","color":"yellow"},
				{"text":"\nFaster and more efficient than electric furnace (8x faster)","color":"gray"},
			],
		},
		"electric_brewing_stand": {
			"id": CUSTOM_BLOCK_VANILLA, CATEGORY: "energy", "custom_data": {"energy": {"usage":40, "max_storage": 2400}},
			RESULT_OF_CRAFTING:[
				{"type":"crafting_shaped","result_count":1,"category":"misc","shape":["SSS","SBS","LLL"],"ingredients":{"S":ingr_repr("simplunium_ingot", ns),"B":ingr_repr("minecraft:brewing_stand"),"L":ingr_repr("minecraft:lapis_block")}},
				{"type":"crafting_shaped","result_count":1,"category":"misc","shape":["SSS","DBD","LLL"],"ingredients":{"S":ingr_repr("simplunium_ingot", ns),"B":ingr_repr("minecraft:brewing_stand"),"L":ingr_repr("minecraft:lapis_block"),"D":ingr_repr("minecraft:diamond")}},
			],
			OVERRIDE_MODEL: {"parent":"block/brewing_stand","textures":{"base":f"{ns}:item/electric_brewing_stand_base","stand":f"{ns}:item/electric_brewing_stand"},
			"display":{
				"gui":{"rotation":[30,225,0],"translation":[0,0,0],"scale":[0.625,0.625,0.625]},
				"ground":{"rotation":[0,0,0],"translation":[0,3,0],"scale":[0.25,0.25,0.25]},
				"fixed":{"rotation":[0,0,0],"translation":[0,0,0],"scale":[0.5,0.5,0.5]},
				"thirdperson_righthand":{"rotation":[75,45,0],"translation":[0,2.5,0],"scale":[0.375,0.375,0.375]},
				"firstperson_righthand":{"rotation":[0,45,0],"translation":[0,0,0],"scale":[0.40,0.40,0.40]},
				"firstperson_lefthand":{"rotation":[0,225,0],"translation":[0,0,0],"scale":[0.40,0.40,0.40]}
		}},
			WIKI_COMPONENT: [
				{"text":"Electric-powered brewing station.","color":"yellow"},
				{"text":"\nBrews potions using electricity (8x faster)","color":"gray"},
			],
		},
		"pulverizer": {
			"id": CUSTOM_BLOCK_VANILLA, CATEGORY: "energy", "custom_data": {"energy": {"usage":120, "max_storage": 6400}},
			RESULT_OF_CRAFTING:[
				{"type":"crafting_shaped","result_count":1,"category":"misc","shape":["DDD","SMS","III"],"ingredients":{"D":ingr_repr("minecraft:diamond"),"S":ingr_repr("simplunium_ingot", ns),"M":ingr_repr("machine_block", ns),"I":ingr_repr("minecraft:iron_block")}},
				{"type":"crafting_shaped","result_count":1,"category":"misc","shape":["DDD","SMS","CCC"],"ingredients":{"D":ingr_repr("minecraft:diamond"),"S":ingr_repr("simplunium_ingot", ns),"M":ingr_repr("machine_block", ns),"C":ingr_repr("minecraft:copper_block")}},
			],
			WIKI_COMPONENT: [
				{"text":"Ore processing and grinding machine.","color":"yellow"},
				{"text":"\nGrinds ores into dusts for increased yields","color":"gray"},
			],
		},
		"elevator": {
			"id": CUSTOM_BLOCK_VANILLA, CATEGORY: "energy", "custom_data": {"energy": {"usage":20, "max_storage": 1200}},
			RESULT_OF_CRAFTING:[
				{"type":"crafting_shaped","result_count":1,"category":"misc","shape":["III","IRI","III"],"ingredients":{"I":ingr_repr("minecraft:iron_block", ns),"R":ingr_repr("minecraft:redstone_lamp")}},
				{"type":"crafting_shaped","result_count":1,"category":"misc","shape":["ICI","CRC","ICI"],"ingredients":{"I":ingr_repr("minecraft:iron_block", ns),"C":ingr_repr("minecraft:copper_block", ns),"R":ingr_repr("minecraft:redstone_lamp")}},
			],
			WIKI_COMPONENT: [
				{"text":"Vertical transport system for players.","color":"yellow"},
				{"text":"\nSneak on top to teleport to an elevator placed below","color":"gray"},
				{"text":"\nJump on top to teleport to an elevator placed above","color":"gray"},
				{"text":"\nMaximum distance: 72 blocks","color":"gray"},
			],
		},

		# Cables
		"simple_cable": {
			"id": CUSTOM_BLOCK_HEAD, CATEGORY: "energy", "custom_data": {"energy": {"transfer":40}},
			RESULT_OF_CRAFTING:[
				{"type":"crafting_shaped","result_count":12,"category":"misc","group":"simple_cable","shape":["ICI","IOI","ICI"],"ingredients":{"I":ingr_repr("minecraft:iron_ingot"),"C":ingr_repr("minecraft:copper_ingot"),"O":ingr_repr("minecraft:coal")}},
				{"type":"crafting_shaped","result_count":12,"category":"misc","group":"simple_cable","shape":["ICI","IOI","ICI"],"ingredients":{"I":ingr_repr("minecraft:iron_ingot"),"C":ingr_repr("minecraft:copper_ingot"),"O":ingr_repr("minecraft:charcoal")}},
				{"type":"crafting_shaped","result_count":12,"category":"misc","group":"simple_cable","shape":["III","COC","III"],"ingredients":{"I":ingr_repr("minecraft:iron_ingot"),"C":ingr_repr("minecraft:copper_ingot"),"O":ingr_repr("minecraft:coal")}},
				{"type":"crafting_shaped","result_count":12,"category":"misc","group":"simple_cable","shape":["III","COC","III"],"ingredients":{"I":ingr_repr("minecraft:iron_ingot"),"C":ingr_repr("minecraft:copper_ingot"),"O":ingr_repr("minecraft:charcoal")}},
			],
			"profile": {
				"id": [-709098200,1001541428,-2043264882,-430220135],
				"properties":[{"name":"textures", "value":"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTE2MTcxZjY3ZGUxNzQxMzA4ZTUxYzNmNTBkODE1M2YzMmIzNDljNDYwODgxYzZjODM5ZTYwMTk1NDM1ODliMSJ9fX0="}],
			},
			WIKI_COMPONENT: [
				{"text":"Basic energy transmission cable.","color":"yellow"},
				{"text":"\nConnects energy generators to machines and batteries","color":"gray"},
			],
		},
		"advanced_cable": {
			"id": CUSTOM_BLOCK_HEAD, CATEGORY: "energy", "custom_data": {"energy": {"transfer":120}},
			RESULT_OF_CRAFTING:[
				{"type":"crafting_shapeless","result_count":1,"category":"misc","ingredients":[ingr_repr("simple_cable", ns)] + 8*[ingr_repr("minecraft:lapis_lazuli")]},
			],
			"profile": {
				"id": [-709098200,1001541428,-2043264882,-430220135],
				"properties":[{"name":"textures", "value":"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzlmNjNlZGIwMDA4NWM1Mzk0Y2FmZjg2Yzk3ZmU4NGQxYmUwMGEwMDcxMDE4Y2YwOTAwZTdiNjMwYTY2Y2VlZSJ9fX0="}],
			},
			WIKI_COMPONENT: [
				{"text":"Improved energy transmission cable.","color":"yellow"},
				{"text":"\nUpgraded cable for higher energy throughput","color":"gray"},
			],
		},
		"elite_cable": {
			"id": CUSTOM_BLOCK_HEAD, CATEGORY: "energy", "custom_data": {"energy": {"transfer":240}},
			RESULT_OF_CRAFTING:[
				{"type":"crafting_shapeless","result_count":1,"category":"misc","ingredients":[ingr_repr("advanced_cable", ns)] + 4*[ingr_repr("minecraft:redstone_block")]},
			],
			"profile": {
				"id": [-709098200,1001541428,-2043264882,-430220135],
				"properties":[{"name":"textures", "value":"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjlmMzJjOWNkNTU2MzJmNjEzZjRhMDU2ZGEyYzJhYTkzZjMwOTk2ZGY2NzMxZTcyYmM1NDA4NzA4ZGE5MWYzOCJ9fX0="}],
			},
			WIKI_COMPONENT: [
				{"text":"High-capacity energy transmission cable.","color":"yellow"},
				{"text":"\nTop-tier cable for maximum energy transfer","color":"gray"},
			],
		},
		"basic_item_cable": {
			"id": CUSTOM_BLOCK_VANILLA, CATEGORY: "energy",
			OVERRIDE_MODEL: {"parent":f"{ns}:block/basic_item_cable/no_variant", "textures": None},
			RESULT_OF_CRAFTING:[
				{"type":"crafting_shaped","result_count":8,"category":"misc","shape":["SGS"],"ingredients":{"S":ingr_repr("simplunium_ingot", ns),"G":ingr_repr("minecraft:glass")}},
				{"type":"crafting_shaped","result_count":8,"category":"misc","shape":["S","G","S"],"ingredients":{"S":ingr_repr("simplunium_ingot", ns),"G":ingr_repr("minecraft:glass")}},
			],
			WIKI_COMPONENT: [
				{"text":"Item transport cable.","color":"yellow"},
				{"text":"\nConnects machines and storage for item transfer","color":"gray"},
				{"text":"\nRequires both Servo Extractor and Servo Inserter","color":"gray"},
			],
		},
		"servo_extractor": {
			"id": CUSTOM_BLOCK_ALTERNATIVE, CATEGORY: "energy",
			"custom_data": {ns: {"stack_limit":4, "retry_limit": 1}},
			OVERRIDE_MODEL: {"parent":f"{ns}:block/servo/extract_item", "textures": None},
			RESULT_OF_CRAFTING:[
				{"type":"crafting_shaped","result_count":1,"category":"misc","shape":["CRC","SPS"," E "],"ingredients":{"C":ingr_repr("basic_item_cable", ns),"R":ingr_repr("minecraft:redstone_block"),"S":ingr_repr("simplunium_ingot", ns),"P":ingr_repr("minecraft:comparator"),"E":ingr_repr("minecraft:emerald")}},
			],
			WIKI_COMPONENT: [
				{"text":"Item extraction servo-mechanism.","color":"yellow"},
				{"text":"\nExtracts items from containers when placed on valid output faces","color":"gray"},
				{"text":"\nMust be connected to Basic Item Cable for item transport","color":"gray"},
			],
		},
		"servo_inserter": {
			"id": CUSTOM_BLOCK_ALTERNATIVE, CATEGORY: "energy",
			"custom_data": {ns: {"stack_limit":4, "retry_limit": 1}},
			OVERRIDE_MODEL: {"parent":f"{ns}:block/servo/insert_item", "textures": None},
			RESULT_OF_CRAFTING:[
				{"type":"crafting_shaped","result_count":1,"category":"misc","shape":[" D ","SPS","CRC"],"ingredients":{"C":ingr_repr("basic_item_cable", ns),"R":ingr_repr("minecraft:redstone_block"),"S":ingr_repr("simplunium_ingot", ns),"P":ingr_repr("minecraft:comparator"),"D":ingr_repr("minecraft:diamond")}},
			],
			WIKI_COMPONENT: [
				{"text":"Item insertion servo-mechanism.","color":"yellow"},
				{"text":"\nInserts items into containers when placed on valid input faces","color":"gray"},
				{"text":"\nMust be connected to Basic Item Cable for item transport","color":"gray"},
			],
		},

		# Mechanization items
		"tin_dust": {WIKI_COMPONENT: MECHANIZATION_COMPATIBILITY},
		"titanium_dust": {WIKI_COMPONENT: MECHANIZATION_COMPATIBILITY},
	}

	# Raw materials
	additions["raw_simplunium"] = {
		WIKI_COMPONENT: [
			{"text":"Raw ore material for the energy system.","color":"yellow"},
			{"text":"\nDrop from mining Simplunium Ore (1-2 per ore)","color":"gray"},
			{"text":"\nSmelt in furnace to create Simplunium Ingots","color":"gray"},
			{"text":"\nCan be pulverized into Simplunium Dust","color":"gray"},
		]
	}

	# Custom blocks
	additions["simplunium_ore"] = {WIKI_COMPONENT: ORE_WIKI, NO_SILK_TOUCH_DROP: {"id": "raw_simplunium", "count": {"min":1, "max":2}}}
	additions["deepslate_simplunium_ore"] = {WIKI_COMPONENT: ORE_WIKI, NO_SILK_TOUCH_DROP: {"id": "raw_simplunium", "count": {"min":1, "max":2}}}
	additions["simplunium_block"] = {VANILLA_BLOCK: {"id": "minecraft:iron_block", "apply_facing": False}}
	additions["raw_simplunium_block"] = {VANILLA_BLOCK: {"id": "minecraft:raw_iron_block", "apply_facing": False}}
	additions["machine_block"][VANILLA_BLOCK] = {"id": "minecraft:iron_block", "apply_facing": False}
	additions["simple_battery"][VANILLA_BLOCK] = {"id": "minecraft:waxed_copper_block", "apply_facing": False}
	additions["advanced_battery"][VANILLA_BLOCK] = {"id": "minecraft:gold_block", "apply_facing": False}
	additions["elite_battery"][VANILLA_BLOCK] = {"id": "minecraft:iron_block", "apply_facing": False}
	additions["creative_battery"][VANILLA_BLOCK] = {"id": "minecraft:iron_block", "apply_facing": False}
	additions["cauldron_generator"][VANILLA_BLOCK] = {"id": "minecraft:cauldron", "apply_facing": False}
	additions["furnace_generator"][VANILLA_BLOCK] = {"id": "minecraft:furnace", "apply_facing": True}
	additions["redstone_generator"][VANILLA_BLOCK] = {"id": "minecraft:furnace", "apply_facing": True}
	additions["heat_generator"][VANILLA_BLOCK] = {"id": "minecraft:iron_block", "apply_facing": False}
	additions["wind_turbine"][VANILLA_BLOCK] = {"id": "minecraft:iron_trapdoor", "apply_facing": True}
	additions["solar_panel"][VANILLA_BLOCK] = {"id": "minecraft:daylight_detector", "apply_facing": False}
	additions["electric_furnace"][VANILLA_BLOCK] = {"id": "minecraft:furnace", "apply_facing": True}
	additions["electric_smelter"][VANILLA_BLOCK] = {"id": "minecraft:furnace", "apply_facing": True}
	additions["electric_brewing_stand"][VANILLA_BLOCK] = {"id": "minecraft:brewing_stand", "apply_facing": False}
	additions["pulverizer"][VANILLA_BLOCK] = {"id": "minecraft:barrel", "apply_facing": True}
	additions["elevator"][VANILLA_BLOCK] = {"id": "minecraft:iron_block", "apply_facing": False}
	additions["simple_cable"][VANILLA_BLOCK] = {"apply_facing": False, "id": "minecraft:player_head{profile:" + str(additions["simple_cable"]["profile"]) + "}"}
	additions["advanced_cable"][VANILLA_BLOCK] = {"apply_facing": False, "id": "minecraft:player_head{profile:" + str(additions["advanced_cable"]["profile"]) + "}"}
	additions["elite_cable"][VANILLA_BLOCK] = {"apply_facing": False, "id": "minecraft:player_head{profile:" + str(additions["elite_cable"]["profile"]) + "}"}
	additions["basic_item_cable"][VANILLA_BLOCK] = {"id": "minecraft:conduit[waterlogged=false]", "apply_facing": False}
	additions["servo_extractor"][VANILLA_BLOCK] = {"contents": True}	# Item frame custom block entity
	additions["servo_inserter"][VANILLA_BLOCK] = {"contents": True}		# Item frame custom block entity

	additions["manual"] = {
		"id": "minecraft:written_book", "category": MISC,
		RESULT_OF_CRAFTING: [
			# Put a book and a steel ingot in the crafting grid to get the manual
			{"type":"crafting_shapeless","result_count":1,"group":"manual","category":MISC,"ingredients": [ingr_repr("minecraft:book"), ingr_repr("simplunium_ingot", ns)]},

			# Put the manual in the crafting grid to get the manual back (update the manual)
			{"type":"crafting_shapeless","result_count":1,"group":"manual","category":MISC,"ingredients": [ingr_repr("manual", ns)]},
		],
	}

	# Update the definitions with new data
	for k, v in additions.items():
		if k in Mem.definitions:
			Mem.definitions[k].update(v)
		else:
			Mem.definitions[k] = v
	info("Database additions loaded")

