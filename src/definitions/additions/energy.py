
# ruff: noqa: E501
# Imports
from stewbeet import (
	Block,
	BlockAlternative,
	BlockHead,
	CraftingShapedRecipe,
	CraftingShapelessRecipe,
	Ingr,
	JsonDict,
	Mem,
	VanillaBlock,
	WikiButton,
)


def main_additions() -> None:
	ns: str = Mem.ctx.project_id

	# Energy materials
	Block(
		id="machine_block",
		vanilla_block=VanillaBlock(id="minecraft:iron_block", apply_facing=False),
		manual_category="energy",
		recipes=[
			CraftingShapedRecipe(category="misc", shape=["SSS","SCS","III"], ingredients={"S":Ingr("minecraft:stone"),"C":Ingr("minecraft:copper_block"),"I":Ingr("minecraft:iron_block")}),
			CraftingShapedRecipe(category="misc", shape=["SSS","SIS","CCC"], ingredients={"S":Ingr("minecraft:stone"),"C":Ingr("minecraft:copper_block"),"I":Ingr("minecraft:iron_block")}),
		],
		wiki_buttons=[WikiButton([
			{"text":"Basic machine block for energy systems.","color":"yellow"},
			{"text":"\nUsed as a base for most machines and generators","color":"gray"},
		])]
	)

	# Batteries
	Block(
		id="simple_battery",
		vanilla_block=VanillaBlock(id="minecraft:waxed_copper_block", apply_facing=False),
		manual_category="energy",
		recipes=[
			CraftingShapedRecipe(category="misc", shape=["CCC","CRC","III"], ingredients={"C":Ingr("minecraft:copper_block"),"R":Ingr("minecraft:redstone"),"I":Ingr("minecraft:iron_ingot")}),
			CraftingShapedRecipe(category="misc", shape=["CCC","CIC","RRR"], ingredients={"C":Ingr("minecraft:copper_block"),"R":Ingr("minecraft:redstone_block"),"I":Ingr("minecraft:iron_ingot")})
		],
		wiki_buttons=[WikiButton([
			{"text":"Basic energy storage device.","color":"yellow"},
			{"text":"\nStores up to 10,000 kJ","color":"gray"},
			{"text":"\nModes: Input Only, Output Only, Both (use Battery Switcher)","color":"gray"},
			{"text":"\nBreaking the battery preserves stored energy","color":"gray"},
			{"text":"\nBalances energy storage with adjacent simple batteries","color":"gray"},
		])],
		components={"custom_data": {"energy": {"storage":0, "max_storage": 10000}}}
	)

	Block(
		id="advanced_battery",
		vanilla_block=VanillaBlock(id="minecraft:gold_block", apply_facing=False),
		manual_category="energy",
		recipes=[
			CraftingShapedRecipe(category="misc", shape=["GGG","GXG","CCC"], ingredients={"G":Ingr("minecraft:gold_block"),"X":Ingr("simple_battery"),"C":Ingr("minecraft:copper_block")}),
			CraftingShapedRecipe(category="misc", shape=["GGG","GXG","III"], ingredients={"G":Ingr("minecraft:gold_block"),"X":Ingr("simple_battery"),"I":Ingr("minecraft:iron_block")})
		],
		wiki_buttons=[WikiButton([
			{"text":"Advanced energy storage device.","color":"yellow"},
			{"text":"\nStores up to 25,000 kJ","color":"gray"},
			{"text":"\nModes: Input Only, Output Only, Both (use Battery Switcher)","color":"gray"},
			{"text":"\nBreaking the battery preserves stored energy","color":"gray"},
			{"text":"\nBalances energy storage with adjacent advanced batteries","color":"gray"},
		])],
		components={"custom_data": {"energy": {"storage":0, "max_storage": 25000}}}
	)

	Block(
		id="elite_battery",
		vanilla_block=VanillaBlock(id="minecraft:iron_block", apply_facing=False),
		manual_category="energy",
		recipes=[
			CraftingShapedRecipe(category="misc", shape=["RRR","RXR","SSS"], ingredients={"R":Ingr("minecraft:redstone_block"),"X":Ingr("advanced_battery"),"S":Ingr("simplunium_block")}),
			CraftingShapedRecipe(category="misc", shape=["RRR","SXS","III"], ingredients={"R":Ingr("minecraft:redstone_block"),"X":Ingr("advanced_battery"),"S":Ingr("simplunium_block"),"I":Ingr("minecraft:iron_block")})
		],
		wiki_buttons=[WikiButton([
			{"text":"Elite energy storage device.","color":"yellow"},
			{"text":"\nStores up to 50,000 kJ","color":"gray"},
			{"text":"\nModes: Input Only, Output Only, Both (use Battery Switcher)","color":"gray"},
			{"text":"\nBreaking the battery preserves stored energy","color":"gray"},
			{"text":"\nBalances energy storage with adjacent elite batteries","color":"gray"},
		])],
		components={"custom_data": {"energy": {"storage":0, "max_storage": 50000}}}
	)

	Block(
		id="creative_battery",
		vanilla_block=VanillaBlock(id="minecraft:iron_block", apply_facing=False),
		components={"custom_data": {"energy": {"storage":2000000000, "max_storage": 2147483647}}}
	)

	# Energy generators
	Block(
		id="cauldron_generator",
		vanilla_block=VanillaBlock(id="minecraft:cauldron", apply_facing=False),
		manual_category="energy",
		recipes=[
			CraftingShapedRecipe(category="misc", shape=["I I","IRI","III"], ingredients={"I":Ingr("minecraft:iron_ingot"),"R":Ingr("minecraft:redstone")}),
			CraftingShapelessRecipe(category="misc", ingredients=[Ingr("minecraft:cauldron"),Ingr("minecraft:redstone"),Ingr("minecraft:iron_ingot")]),
		],
		override_model={
			"parent":"minecraft:block/cauldron", "textures": {"particle": f"{ns}:item/cauldron_generator_side", "side": f"{ns}:item/cauldron_generator_side", "top": f"{ns}:item/cauldron_generator_top", "bottom": f"{ns}:item/cauldron_generator_bottom", "inside": "minecraft:block/cauldron_inner"},
			"display":{
				"gui":{"rotation":[30,225,0],"translation":[0,0,0],"scale":[0.625,0.625,0.625]},
				"ground":{"rotation":[0,0,0],"translation":[0,3,0],"scale":[0.25,0.25,0.25]},
				"fixed":{"rotation":[0,0,0],"translation":[0,0,0],"scale":[0.5,0.5,0.5]},
				"thirdperson_righthand":{"rotation":[75,45,0],"translation":[0,2.5,0],"scale":[0.375,0.375,0.375]},
				"firstperson_righthand":{"rotation":[0,45,0],"translation":[0,0,0],"scale":[0.40,0.40,0.40]},
				"firstperson_lefthand":{"rotation":[0,225,0],"translation":[0,0,0],"scale":[0.40,0.40,0.40]}
			}
		},
		wiki_buttons=[WikiButton([
			{"text":"Basic water-powered generator.","color":"yellow"},
			{"text":"\nRequires water to operate - fill the cauldron with water","color":"gray"},
			{"text":"\nBalances energy storage with adjacent cauldron generators","color":"gray"},
		])],
		components={"custom_data": {"energy": {"generation":5, "max_storage": 500}}}
	)

	Block(
		id="furnace_generator",
		vanilla_block=VanillaBlock(id="minecraft:furnace", apply_facing=True),
		manual_category="energy",
		recipes=[
			CraftingShapedRecipe(category="misc", shape=["III","RMR","SSS"], ingredients={"I":Ingr("minecraft:iron_ingot"),"R":Ingr("minecraft:redstone"),"M":Ingr("machine_block"),"S":Ingr("minecraft:stone")}),
			CraftingShapedRecipe(category="misc", shape=["RRR","IMI","SSS"], ingredients={"I":Ingr("minecraft:iron_ingot"),"R":Ingr("minecraft:redstone"),"M":Ingr("machine_block"),"S":Ingr("minecraft:stone")}),
		],
		wiki_buttons=[WikiButton([
			{"text":"Fuel-burning energy generator.","color":"yellow"},
			{"text":"\nConsumes any furnace fuel to generate energy","color":"gray"},
		])],
		components={"custom_data": {"energy": {"generation":10, "max_storage": 800}}}
	)

	Block(
		id="redstone_generator",
		vanilla_block=VanillaBlock(id="minecraft:furnace", apply_facing=True),
		manual_category="energy",
		recipes=[
			CraftingShapedRecipe(category="misc", shape=["RRR","RFR","SSS"], ingredients={"R":Ingr("minecraft:redstone_block"),"F":Ingr("furnace_generator"),"S":Ingr("simplunium_block")}),
			CraftingShapedRecipe(category="misc", shape=["RRR","SFS","III"], ingredients={"R":Ingr("minecraft:redstone_block"),"F":Ingr("furnace_generator"),"S":Ingr("simplunium_block"),"I":Ingr("minecraft:iron_block")}),
		],
		wiki_buttons=[WikiButton([
			{"text":"High-output redstone generator.","color":"yellow"},
			{"text":"\nAdvanced generator powered by redstone dust and blocks","color":"gray"},
		])],
		components={"custom_data": {"energy": {"generation":80, "max_storage": 6400}}},
	)

	Block(
		id="heat_generator",
		vanilla_block=VanillaBlock(id="minecraft:iron_block", apply_facing=False),
		manual_category="energy",
		recipes=[
			CraftingShapedRecipe(category="misc", shape=["IGI","GAG","IGI"], ingredients={"I":Ingr("minecraft:iron_block"),"G":Ingr("minecraft:glass"),"A":Ingr("minecraft:netherite_scrap")}),
			CraftingShapedRecipe(category="misc", shape=["GIG","IAI","GIG"], ingredients={"I":Ingr("minecraft:iron_block"),"G":Ingr("minecraft:glass"),"A":Ingr("minecraft:netherite_scrap")}),
			CraftingShapedRecipe(category="misc", shape=["IGI","GAG","IGI"], ingredients={"I":Ingr("minecraft:iron_block"),"G":Ingr("minecraft:glass"),"A":Ingr("minecraft:ancient_debris")}),
			CraftingShapedRecipe(category="misc", shape=["GIG","IAI","GIG"], ingredients={"I":Ingr("minecraft:iron_block"),"G":Ingr("minecraft:glass"),"A":Ingr("minecraft:ancient_debris")}),
		],
		wiki_buttons=[WikiButton([
			{"text":"Heat-powered energy generator.","color":"yellow"},
			{"text":"\nMust be placed directly adjacent to lava to operate","color":"gray"},
			{"text":"\nBalances energy storage with adjacent heat generators","color":"gray"},
		])],
		components={"custom_data": {"energy": {"generation":20, "max_storage": 1600}}}
	)

	Block(
		id="wind_turbine",
		vanilla_block=VanillaBlock(id="minecraft:iron_trapdoor", apply_facing=True),
		manual_category="energy",
		recipes=[
			CraftingShapedRecipe(category="misc", shape=[" I ","ICI","BBB"], ingredients={"I":Ingr("minecraft:iron_ingot"),"C":Ingr("minecraft:copper_block"),"B":Ingr("minecraft:iron_block")}),
			CraftingShapedRecipe(category="misc", shape=[" I ","III","BBB"], ingredients={"I":Ingr("minecraft:iron_ingot"),"B":Ingr("minecraft:iron_block")}),
		],
		override_model={"parent":"block/cube_all","textures":{"all":f"{ns}:item/wind_turbine_side","0":f"{ns}:item/wind_turbine_blades","1":"minecraft:block/iron_block","2":f"{ns}:item/wind_turbine_side","particle":f"{ns}:item/wind_turbine_blades"},"elements":[{"name":"blades","from":[1,4,7.5],"to":[15,18,7.5],"faces":{"north":{"uv":[0,0,16,16],"texture":"#0","cullface":"north"},"south":{"uv":[16,0,0,16],"texture":"#0","cullface":"south"}}},{"from":[0,0,0],"to":[16,3.025,16],"faces":{"north":{"uv":[0,13,16,16],"texture":"#2","cullface":"north"},"east":{"uv":[0,13,16,16],"texture":"#2","cullface":"north"},"south":{"uv":[0,13,16,16],"texture":"#2","cullface":"north"},"west":{"uv":[0,13,16,16],"texture":"#2","cullface":"north"},"up":{"uv":[0,0,16,16],"texture":"#1","cullface":"north"},"down":{"uv":[0,0,16,16],"texture":"#1","cullface":"north"}}},{"from":[7,3,7.51],"to":[9,13,8.51],"faces":{"north":{"uv":[0,3,16,13],"texture":"#1","cullface":"north"},"east":{"uv":[0,3,16,13],"texture":"#1","cullface":"north"},"south":{"uv":[0,3,16,13],"texture":"#1","cullface":"north"},"west":{"uv":[0,3,16,13],"texture":"#1","cullface":"north"},"up":{"uv":[12,14,15,15],"texture":"#1","cullface":"north"},"down":{"uv":[12,14,15,15],"texture":"#1","cullface":"north"}}}],"display":{"head":{"translation":[0,-30.42,0],"scale":[1.605,1.605,1.605]},"fixed":{"rotation":[-90,0,0],"translation":[0,0,-16.05],"scale":[2.0075,2.0075,2.0075]}}},
		wiki_buttons=[WikiButton([
			{"text":"Altitude-dependent wind generator.","color":"yellow"},
			{"text":"\nHigher altitude increases energy generation","color":"gray"},
			{"text":"\n(0 kW at y=50, 2 kW at y=60, ..., 20 kW at y=150)","color":"gray"},
		])],
		components={"custom_data": {"energy": {"generation":20, "max_storage": 800}}}
	)

	Block(
		id="solar_panel",
		vanilla_block=VanillaBlock(id="minecraft:daylight_detector", apply_facing=False),
		manual_category="energy",
		recipes=[
			CraftingShapedRecipe(category="misc", shape=["LLL","LDL","III"], ingredients={"L":Ingr("minecraft:lapis_lazuli"),"D":Ingr("minecraft:daylight_detector"),"I":Ingr("minecraft:iron_block")}),
			CraftingShapedRecipe(category="misc", shape=["LLL","GDG","III"], ingredients={"L":Ingr("minecraft:lapis_lazuli"),"G":Ingr("minecraft:glass"),"D":Ingr("minecraft:daylight_detector"),"I":Ingr("minecraft:iron_block")}),
			CraftingShapedRecipe(category="misc", shape=["LLL","LDL","III"], ingredients={"L":Ingr("minecraft:blue_stained_glass"),"D":Ingr("minecraft:daylight_detector"),"I":Ingr("minecraft:iron_block")}),
			CraftingShapedRecipe(category="misc", shape=["LLL","LDL","III"], ingredients={"L":Ingr("minecraft:blue_stained_glass_pane"),"D":Ingr("minecraft:daylight_detector"),"I":Ingr("minecraft:iron_block")}),
		],
		override_model={"parent":"block/daylight_detector", "textures": {"side": f"{ns}:item/solar_panel_side", "top": f"{ns}:item/solar_panel_top"}},
		wiki_buttons=[WikiButton([
			{"text":"Daylight-powered generator.","color":"yellow"},
			{"text":"\nRequires direct sunlight to operate","color":"gray"},
			{"text":"\nBalances energy storage with adjacent solar panels","color":"gray"},
		])],
		components={"custom_data": {"energy": {"generation":4, "max_storage": 600}}}
	)

	# Machines
	Block(
		id="electric_furnace",
		vanilla_block=VanillaBlock(id="minecraft:furnace", apply_facing=True),
		manual_category="energy",
		recipes=[
			CraftingShapedRecipe(category="misc", shape=["LLL","LML","III"], ingredients={"L":Ingr("minecraft:lapis_lazuli"),"M":Ingr("machine_block"),"I":Ingr("minecraft:iron_block")}),
			CraftingShapedRecipe(category="misc", shape=["LLL","LML","CCC"], ingredients={"L":Ingr("minecraft:lapis_lazuli"),"M":Ingr("machine_block"),"C":Ingr("minecraft:copper_block")})
		],
		wiki_buttons=[WikiButton([
			{"text":"Electric-powered smelting machine.","color":"yellow"},
			{"text":"\nSmelts items using electricity instead of fuel (1.5x faster)","color":"gray"},
		])],
		components={"custom_data": {"energy": {"usage":20, "max_storage": 1600}}}
	)

	Block(
		id="electric_smelter",
		vanilla_block=VanillaBlock(id="minecraft:furnace", apply_facing=True),
		manual_category="energy",
		recipes=[CraftingShapedRecipe(category="misc", shape=["SSS","SFS","BBB"], ingredients={"S":Ingr("simplunium_ingot"),"F":Ingr("electric_furnace"),"B":Ingr("simplunium_block")})],
		wiki_buttons=[WikiButton([
			{"text":"Advanced electric smelting station.","color":"yellow"},
			{"text":"\nFaster and more efficient than electric furnace (8x faster)","color":"gray"},
		])],
		components={"custom_data": {"energy": {"usage":100, "max_storage": 8000}}}
	)

	Block(
		id="electric_brewing_stand",
		vanilla_block=VanillaBlock(id="minecraft:brewing_stand", apply_facing=False),
		manual_category="energy",
		recipes=[
			CraftingShapedRecipe(category="misc", shape=["SSS","SBS","LLL"], ingredients={"S":Ingr("simplunium_ingot"),"B":Ingr("minecraft:brewing_stand"),"L":Ingr("minecraft:lapis_block")}),
			CraftingShapedRecipe(category="misc", shape=["SSS","DBD","LLL"], ingredients={"S":Ingr("simplunium_ingot"),"B":Ingr("minecraft:brewing_stand"),"L":Ingr("minecraft:lapis_block"),"D":Ingr("minecraft:diamond")}),
		],
		override_model={"parent":"block/brewing_stand","textures":{"base":f"{ns}:item/electric_brewing_stand_base","stand":f"{ns}:item/electric_brewing_stand"},
		"display":{
			"gui":{"rotation":[30,225,0],"translation":[0,0,0],"scale":[0.625,0.625,0.625]},
			"ground":{"rotation":[0,0,0],"translation":[0,3,0],"scale":[0.25,0.25,0.25]},
			"fixed":{"rotation":[0,0,0],"translation":[0,0,0],"scale":[0.5,0.5,0.5]},
			"thirdperson_righthand":{"rotation":[75,45,0],"translation":[0,2.5,0],"scale":[0.375,0.375,0.375]},
			"firstperson_righthand":{"rotation":[0,45,0],"translation":[0,0,0],"scale":[0.40,0.40,0.40]},
			"firstperson_lefthand":{"rotation":[0,225,0],"translation":[0,0,0],"scale":[0.40,0.40,0.40]}
	}},
		wiki_buttons=[WikiButton([
			{"text":"Electric-powered brewing station.","color":"yellow"},
			{"text":"\nBrews potions using electricity (8x faster)","color":"gray"},
		])],
		components={"custom_data": {"energy": {"usage":40, "max_storage": 2400}}}
	)

	Block(
		id="pulverizer",
		vanilla_block=VanillaBlock(id="minecraft:barrel", apply_facing=True),
		manual_category="energy",
		recipes=[
			CraftingShapedRecipe(category="misc", shape=["DDD","SMS","III"], ingredients={"D":Ingr("minecraft:diamond"),"S":Ingr("simplunium_ingot"),"M":Ingr("machine_block"),"I":Ingr("minecraft:iron_block")}),
			CraftingShapedRecipe(category="misc", shape=["DDD","SMS","CCC"], ingredients={"D":Ingr("minecraft:diamond"),"S":Ingr("simplunium_ingot"),"M":Ingr("machine_block"),"C":Ingr("minecraft:copper_block")}),
		],
		wiki_buttons=[WikiButton([
			{"text":"Ore processing and grinding machine.","color":"yellow"},
			{"text":"\nGrinds ores into dusts for increased yields","color":"gray"},
		])],
		components={"custom_data": {"energy": {"usage":120, "max_storage": 6400}}}
	)

	Block(
		id="elevator",
		vanilla_block=VanillaBlock(id="minecraft:iron_block", apply_facing=False),
		manual_category="energy",
		recipes=[
			CraftingShapedRecipe(category="misc", shape=["III","IRI","III"], ingredients={"I":Ingr("minecraft:iron_block"),"R":Ingr("minecraft:redstone_lamp")}),
			CraftingShapedRecipe(category="misc", shape=["ICI","CRC","ICI"], ingredients={"I":Ingr("minecraft:iron_block"),"C":Ingr("minecraft:copper_block"),"R":Ingr("minecraft:redstone_lamp")}),
		],
		wiki_buttons=[WikiButton([
			{"text":"Vertical transport system for players.","color":"yellow"},
			{"text":"\nSneak on top to teleport to an elevator placed below","color":"gray"},
			{"text":"\nJump on top to teleport to an elevator placed above","color":"gray"},
			{"text":"\nMaximum distance: 72 blocks","color":"gray"},
		])],
		components={"custom_data": {"energy": {"usage":20, "max_storage": 1200}}}
	)

	# Cables
	simple_cable_profile: JsonDict = {
		"id": [-709098200,1001541428,-2043264882,-430220135],
		"properties":[{"name":"textures", "value":"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTE2MTcxZjY3ZGUxNzQxMzA4ZTUxYzNmNTBkODE1M2YzMmIzNDljNDYwODgxYzZjODM5ZTYwMTk1NDM1ODliMSJ9fX0="}],
	}
	advanced_cable_profile: JsonDict = {
		"id": [-709098200,1001541428,-2043264882,-430220135],
		"properties":[{"name":"textures", "value":"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzlmNjNlZGIwMDA4NWM1Mzk0Y2FmZjg2Yzk3ZmU4NGQxYmUwMGEwMDcxMDE4Y2YwOTAwZTdiNjMwYTY2Y2VlZSJ9fX0="}],
	}
	elite_cable_profile: JsonDict = {
		"id": [-709098200,1001541428,-2043264882,-430220135],
		"properties":[{"name":"textures", "value":"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjlmMzJjOWNkNTU2MzJmNjEzZjRhMDU2ZGEyYzJhYTkzZjMwOTk2ZGY2NzMxZTcyYmM1NDA4NzA4ZGE5MWYzOCJ9fX0="}],
	}

	BlockHead(
		id="simple_cable",
		vanilla_block=VanillaBlock(apply_facing=False, id="minecraft:player_head{profile:" + str(simple_cable_profile) + "}"),
		manual_category="energy",
		recipes=[
			CraftingShapedRecipe(result_count=12, category="misc", shape=["ICI","IOI","ICI"], ingredients={"I":Ingr("minecraft:iron_ingot"),"C":Ingr("minecraft:copper_ingot"),"O":Ingr("minecraft:coal")}),
			CraftingShapedRecipe(result_count=12, category="misc", shape=["ICI","IOI","ICI"], ingredients={"I":Ingr("minecraft:iron_ingot"),"C":Ingr("minecraft:copper_ingot"),"O":Ingr("minecraft:charcoal")}),
			CraftingShapedRecipe(result_count=12, category="misc", shape=["III","COC","III"], ingredients={"I":Ingr("minecraft:iron_ingot"),"C":Ingr("minecraft:copper_ingot"),"O":Ingr("minecraft:coal")}),
			CraftingShapedRecipe(result_count=12, category="misc", shape=["III","COC","III"], ingredients={"I":Ingr("minecraft:iron_ingot"),"C":Ingr("minecraft:copper_ingot"),"O":Ingr("minecraft:charcoal")}),
		],
		wiki_buttons=[WikiButton([
			{"text":"Basic energy transmission cable.","color":"yellow"},
			{"text":"\nConnects energy generators to machines and batteries","color":"gray"},
		])],
		components={
			"custom_data": {"energy": {"transfer":40}},
			"profile": simple_cable_profile
		}
	)

	BlockHead(
		id="advanced_cable",
		vanilla_block=VanillaBlock(apply_facing=False, id="minecraft:player_head{profile:" + str(advanced_cable_profile) + "}"),
		manual_category="energy",
		recipes=[
			CraftingShapelessRecipe(category="misc", ingredients=[Ingr("simple_cable")] + 8*[Ingr("minecraft:lapis_lazuli")]),
		],
		wiki_buttons=[WikiButton([
			{"text":"Improved energy transmission cable.","color":"yellow"},
			{"text":"\nUpgraded cable for higher energy throughput","color":"gray"},
		])],
		components={
			"custom_data": {"energy": {"transfer":120}},
			"profile": advanced_cable_profile
		}
	)

	BlockHead(
		id="elite_cable",
		vanilla_block=VanillaBlock(apply_facing=False, id="minecraft:player_head{profile:" + str(elite_cable_profile) + "}"),
		manual_category="energy",
		recipes=[
			CraftingShapelessRecipe(category="misc", ingredients=[Ingr("advanced_cable")] + 4*[Ingr("minecraft:redstone_block")]),
		],
		wiki_buttons=[WikiButton([
			{"text":"High-capacity energy transmission cable.","color":"yellow"},
			{"text":"\nTop-tier cable for maximum energy transfer","color":"gray"},
		])],
		components={
			"custom_data": {"energy": {"transfer":240}},
			"profile": elite_cable_profile
		}
	)

	Block(
		id="basic_item_cable",
		vanilla_block=VanillaBlock(id="minecraft:conduit[waterlogged=false]", apply_facing=False),
		manual_category="energy",
		override_model={"parent":f"{ns}:block/basic_item_cable/no_variant", "textures": None},
		recipes=[
			CraftingShapedRecipe(result_count=8, category="misc", shape=["SGS"], ingredients={"S":Ingr("simplunium_ingot"),"G":Ingr("minecraft:glass")}),
			CraftingShapedRecipe(result_count=8, category="misc", shape=["S","G","S"], ingredients={"S":Ingr("simplunium_ingot"),"G":Ingr("minecraft:glass")}),
		],
		wiki_buttons=[WikiButton([
			{"text":"Item transport cable.","color":"yellow"},
			{"text":"\nConnects machines and storage for item transfer","color":"gray"},
			{"text":"\nRequires both Servo Extractor and Servo Inserter","color":"gray"},
		])]
	)

	BlockAlternative(
		id="servo_extractor",
		vanilla_block=VanillaBlock(contents=True),
		manual_category="energy",
		override_model={"parent":f"{ns}:block/servo/extract_item", "textures": None},
		recipes=[
			CraftingShapedRecipe(category="misc", shape=["CRC","SPS"," E "], ingredients={"C":Ingr("basic_item_cable"),"R":Ingr("minecraft:redstone_block"),"S":Ingr("simplunium_ingot"),"P":Ingr("minecraft:comparator"),"E":Ingr("minecraft:emerald")}),
		],
		wiki_buttons=[WikiButton([
			{"text":"Item extraction servo-mechanism.","color":"yellow"},
			{"text":"\nExtracts items from containers when placed on valid output faces","color":"gray"},
			{"text":"\nMust be connected to Basic Item Cable for item transport","color":"gray"},
		])],
		components={"custom_data": {ns: {"stack_limit":4, "retry_limit": 1}}}
	)

	BlockAlternative(
		id="servo_inserter",
		vanilla_block=VanillaBlock(contents=True),
		manual_category="energy",
		override_model={"parent":f"{ns}:block/servo/insert_item", "textures": None},
		recipes=[
			CraftingShapedRecipe(category="misc", shape=[" D ","SPS","CRC"], ingredients={"C":Ingr("basic_item_cable"),"R":Ingr("minecraft:redstone_block"),"S":Ingr("simplunium_ingot"),"P":Ingr("minecraft:comparator"),"D":Ingr("minecraft:diamond")}),
		],
		wiki_buttons=[WikiButton([
			{"text":"Item insertion servo-mechanism.","color":"yellow"},
			{"text":"\nInserts items into containers when placed on valid input faces","color":"gray"},
			{"text":"\nMust be connected to Basic Item Cable for item transport","color":"gray"},
		])],
		components={"custom_data": {ns: {"stack_limit":4, "retry_limit": 1}}}
	)

