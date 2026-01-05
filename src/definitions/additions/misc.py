
# ruff: noqa: E501
# Imports
from stewbeet import (
	CraftingShapedRecipe,
	CraftingShapelessRecipe,
	Ingr,
	Item,
	Mem,
	PulverizingRecipe,
	WikiButton,
)


def main_additions() -> None:
	MISC: str = "miscellaneous"
	ns: str = Mem.ctx.project_id

	# Miscellaneous items
	Item(
		id="multimeter",
		base_item="minecraft:warped_fungus_on_a_stick",
		manual_category=MISC,
		recipes=[
			CraftingShapedRecipe(category="equipment", shape=["II","CC","CC"], ingredients={"I":Ingr("minecraft:iron_ingot"),"C":Ingr("minecraft:copper_ingot")})
		],
		override_model={"parent":"item/handheld"},
		wiki_buttons=[WikiButton([
			{"text":"A diagnostic tool for energy systems.","color":"yellow"},
			{"text":"\nHold in your offhand to automatically scan machines when looking at them.","color":"gray"},
		])],
		components={
			"tooltip_display": {"hidden_components": ["minecraft:unbreakable"]},
			"lore": [
				{"text":"Allows you to analyse machines","italic":False,"color":"gray"},
				{"text":"to get their energy information","italic":False,"color":"gray"},
				{"text":"[Hold in offhand for passive use]","italic":False,"color":"white"}
			]
		}
	)

	Item(
		id="wrench",
		base_item="minecraft:warped_fungus_on_a_stick",
		manual_category=MISC,
		recipes=[
			CraftingShapedRecipe(category="equipment", shape=[" I "," II", "I  "], ingredients={"I":Ingr("simplunium_ingot")})
		],
		wiki_buttons=[WikiButton([
			{"text":"Essential tool for energy system maintenance.","color":"yellow"},
			{"text":"\nSneak + Right Click: Rotate machines","color":"gray"},
			{"text":"\nInstantly breaks cables for easy reconfiguration","color":"gray"},
		])],
		components={
			"tooltip_display": {"hidden_components": ["minecraft:unbreakable"]},
			"lore": [
				{"text":"Provides you the ability to instantly","italic":False,"color":"gray"},
				{"text":"break cables and rotates machines while sneaking","italic":False,"color":"gray"}
			]
		}
	)

	Item(
		id="slot_unlocker",
		base_item="minecraft:paper",
		manual_category=MISC,
		recipes=[
			CraftingShapedRecipe(category="equipment", shape=["QBQ","NGN","NIN"], ingredients={"Q":Ingr("minecraft:quartz"),"B":Ingr("minecraft:breeze_rod"),"N":Ingr("minecraft:gold_nugget"),"G":Ingr("minecraft:raw_gold_block"),"I":Ingr("minecraft:iron_block")})
		],
		wiki_buttons=[WikiButton([
			{"text":"Unlocks blocked machine inventory slots.","color":"yellow"},
			{"text":"\nSome machines may have locked slots that require this tool to access (e.g. Pulverizer).","color":"gray"},
		])],
		components={"lore": [{"text":"Unlocks a blocked slot in a machine","italic":False,"color":"gray"}]}
	)

	Item(
		id="battery_switcher",
		base_item="minecraft:warped_fungus_on_a_stick",
		manual_category=MISC,
		recipes=[
			CraftingShapedRecipe(category="equipment", shape=[" RS"," SB","S  "], ingredients={"R":Ingr("minecraft:redstone"),"S":Ingr("simplunium_ingot"),"B":Ingr("minecraft:stone_button")})
		],
		override_model={"parent":"item/handheld"},
		wiki_buttons=[WikiButton([
			{"text":"Controls battery input/output modes.","color":"yellow"},
			{"text":"\nModes: Input Only, Output Only, Both","color":"gray"},
			{"text":"\nRight-click on batteries to cycle modes","color":"gray"},
		])],
		components={
			"tooltip_display": {"hidden_components": ["minecraft:unbreakable"]},
			"lore": [
				{"text":"Allows you to switch batteries states","italic":False,"color":"gray"},
				{"text":"[Input / Output / Both]","italic":False,"color":"gray"},
				{"text":"[Hold in offhand for passive use]","italic":False,"color":"white"},
				{"text":"[Right click on a battery to switch]","italic":False,"color":"white"}
			]
		}
	)

	Item(
		id="battery_switcher_both",
		base_item="minecraft:warped_fungus_on_a_stick",
		override_model={"parent":"item/handheld"},
		components={"custom_data": {ns: {"battery_switcher": True}}}
	)

	Item(
		id="battery_switcher_output",
		base_item="minecraft:warped_fungus_on_a_stick",
		override_model={"parent":"item/handheld"},
		components={"custom_data": {ns: {"battery_switcher": True}}}
	)

	Item(
		id="battery_switcher_input",
		base_item="minecraft:warped_fungus_on_a_stick",
		override_model={"parent":"item/handheld"},
		components={"custom_data": {ns: {"battery_switcher": True}}}
	)

	Item(
		id="manual",
		base_item="minecraft:written_book",
		manual_category=MISC,
		recipes=[
			# Put a book and a steel ingot in the crafting grid to get the manual
			CraftingShapelessRecipe(category=MISC, ingredients=[Ingr("minecraft:book"), Ingr("simplunium_ingot")]),
			# Put the manual in the crafting grid to get the manual back (update the manual)
			CraftingShapelessRecipe(category=MISC, ingredients=[Ingr("manual")]),
		],
		components={"item_name": "SimplEnergy Manual"}
	)

	# Music discs pulverizing recipes
	obj = Item.from_id("luxio_suno_je_taime_stoupy51")
	obj.manual_category = MISC
	obj.recipes.extend([
		PulverizingRecipe(category="misc", ingredient=Ingr(f"minecraft:music_disc_{disc}"))
		for disc in [
			"13","cat","blocks","chirp","far","mall","mellohi","stal","strad","ward","11","wait",
			"creator_music_box","creator","precipice","otherside","relic","5","pigstep","tears","lava_chicken"
		]
	])

