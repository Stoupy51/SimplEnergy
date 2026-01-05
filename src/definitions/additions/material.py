
# Imports
from stewbeet import (
	Block,
	Item,
	NoSilkTouchDrop,
	TextComponent,
	VanillaBlock,
	WikiButton,
)

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

	# Raw materials
	Item.from_id("raw_simplunium").wiki_buttons = [WikiButton([
		{"text":"Raw ore material for the energy system.","color":"yellow"},
		{"text":"\nDrop from mining Simplunium Ore (1-2 per ore)","color":"gray"},
		{"text":"\nSmelt in furnace to create Simplunium Ingots","color":"gray"},
		{"text":"\nCan be pulverized into Simplunium Dust","color":"gray"},
	])]

	# Custom blocks
	for ore in ["simplunium_ore", "deepslate_simplunium_ore"]:
		obj = Block.from_id(ore)
		obj.wiki_buttons = [WikiButton(ORE_WIKI)]
		obj.no_silk_touch_drop = NoSilkTouchDrop(id="raw_simplunium", count={"min":1, "max":2})
	Block.from_id("simplunium_block").vanilla_block = VanillaBlock(id="minecraft:iron_block", apply_facing=False)
	Block.from_id("raw_simplunium_block").vanilla_block = VanillaBlock(id="minecraft:raw_iron_block", apply_facing=False)

	# Mechanization items
	Item.from_id("tin_dust").wiki_buttons = [WikiButton(MECHANIZATION_COMPATIBILITY)]
	Item.from_id("titanium_dust").wiki_buttons = [WikiButton(MECHANIZATION_COMPATIBILITY)]

