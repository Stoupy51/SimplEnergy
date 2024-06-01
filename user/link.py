
# Imports
from python_datapack.constants import *
from python_datapack.utils.print import *
from python_datapack.utils.io import *
from user.utils.advancements import add_visible_advancements
from user.utils.energy import complete_place_and_destroy

# Main function is run just before making finalyzing the build process (zip, headers, lang, ...)
def main(config: dict) -> None:
	database: dict[str, dict] = config['database']
	
	# Add commands to place and destroy functions for energy items
	complete_place_and_destroy(config)

	# advancement
	advancements = {
		"simplunium_ingot": {'display': {'title': {'text': 'SimplEnergy', 'color': 'gray'}, 'description': {'text': 'Obtain a Simplunium Ingot', 'color': 'green'}, 'background': 'simplenergy:textures/item/advancement_background.png', 'frame': 'task', 'show_toast': True, 'announce_to_chat': True, 'hidden': False}},
		"advanced_battery": {'display': {'title': {'text': 'More Energy Storage!', 'color': 'gray'}, 'description': {'text': 'Upgrade a Simple Battery', 'color': 'green'}, 'frame': 'task', 'show_toast': True, 'announce_to_chat': True, 'hidden': False}, 'parent': 'simplenergy:visible/simple_battery'},
		"advanced_cable": {'display': {'title': {'text': 'Better Cable, Faster Transfer', 'color': 'gray'}, 'description': {'text': 'Upgrade a Simple Cable', 'color': 'green'}, 'frame': 'task', 'show_toast': True, 'announce_to_chat': True, 'hidden': False}, 'parent': 'simplenergy:visible/simple_cable'},
		"cauldron_generator": {'display': {'title': {'text': 'The Simpler Generator', 'color': 'gray'}, 'description': {'text': 'Craft your first Cauldron Generator', 'color': 'green'}, 'frame': 'task', 'show_toast': True, 'announce_to_chat': True, 'hidden': False}, 'parent': 'simplenergy:visible/simplunium_ingot'},
		"electric_brewing_stand": {'display': {'title': {'text': 'Faster Brewing', 'color': 'gray'}, 'description': {'text': 'Obtain an Electric Brewing Stand', 'color': 'green'}, 'frame': 'task', 'show_toast': True, 'announce_to_chat': True, 'hidden': False}, 'parent': 'simplenergy:visible/electric_smelter'},
		"electric_furnace": {'display': {'title': {'text': 'A Better Furnace', 'color': 'gray'}, 'description': {'text': 'Craft your first Electric Furnace', 'color': 'green'}, 'frame': 'task', 'show_toast': True, 'announce_to_chat': True, 'hidden': False}, 'parent': 'simplenergy:visible/simplunium_ingot'},
		"electric_smelter": {'display': {'title': {'text': 'A Very Fast Smelter', 'color': 'gray'}, 'description': {'text': 'Upgrade an Electric Furnace', 'color': 'green'}, 'frame': 'task', 'show_toast': True, 'announce_to_chat': True, 'hidden': False}, 'parent': 'simplenergy:visible/electric_furnace'},
		"elite_battery": {'display': {'title': {'text': 'More and More Energy Storage!', 'color': 'gray'}, 'description': {'text': 'Upgrade an Advanced Battery', 'color': 'green'}, 'frame': 'task', 'show_toast': True, 'announce_to_chat': True, 'hidden': False}, 'parent': 'simplenergy:visible/advanced_battery'},
		"elite_cable": {'display': {'title': {'text': 'More and More Transfer', 'color': 'gray'}, 'description': {'text': 'Upgrade an Advanced Cable', 'color': 'green'}, 'frame': 'task', 'show_toast': True, 'announce_to_chat': True, 'hidden': False}, 'parent': 'simplenergy:visible/advanced_cable'},
		"furnace_generator": {'display': {'title': {'text': 'Also named the Coal Generator', 'color': 'gray'}, 'description': {'text': 'Craft your first Furnace Generator', 'color': 'green'}, 'frame': 'task', 'show_toast': True, 'announce_to_chat': True, 'hidden': False}, 'parent': 'simplenergy:visible/cauldron_generator'},
		"multimeter": {'display': {'title': {'text': 'Measuring Energy', 'color': 'gray'}, 'description': {'text': 'Obtain a Multimeter', 'color': 'green'}, 'frame': 'task', 'show_toast': True, 'announce_to_chat': True, 'hidden': False}, 'parent': 'simplenergy:visible/simplunium_ingot'},
		"simple_battery": {'display': {'title': {'text': 'A Simple Energy Storage', 'color': 'gray'}, 'description': {'text': 'Craft your first Simple Battery', 'color': 'green'}, 'frame': 'task', 'show_toast': True, 'announce_to_chat': True, 'hidden': False}, 'parent': 'simplenergy:visible/simplunium_ingot'},
		"simple_cable": {'display': {'title': {'text': 'Energy Needs Cables', 'color': 'gray'}, 'description': {'text': 'Get your first Simple Cable', 'color': 'green'}, 'frame': 'task', 'show_toast': True, 'announce_to_chat': True, 'hidden': False}, 'parent': 'simplenergy:visible/multimeter'},
		"simplunium_pickaxe": {'display': {'title': {'text': 'Simplunium Age', 'color': 'gray'}, 'description': {'text': 'Craft a Simplunium Pickaxe', 'color': 'green'}, 'frame': 'task', 'show_toast': True, 'announce_to_chat': True, 'hidden': False}, 'parent': 'simplenergy:visible/simplunium_ingot'},
		"solar_panel": {'display': {'title': {'text': 'Use the Sunlight', 'color': 'gray'}, 'description': {'text': 'Get your first Solar Panel', 'color': 'green'}, 'frame': 'task', 'show_toast': True, 'announce_to_chat': True, 'hidden': False}, 'parent': 'simplenergy:visible/furnace_generator'},
		"wrench": {'display': {'title': {'text': 'Having the control!', 'color': 'gray'}, 'description': {'text': 'Craft a wrench to rotate machines and break cables', 'color': 'green'}, 'frame': 'task', 'show_toast': True, 'announce_to_chat': True, 'hidden': True}, 'parent': 'simplenergy:visible/simplunium_armor'},

		"simplunium_armor": {
			'display': { "icon": {
				"id": database["simplunium_chestplate"]["id"],
				"components": {
					"minecraft:custom_model_data": database["simplunium_chestplate"]["custom_model_data"],
					"minecraft:dyed_color": database["simplunium_chestplate"]["dyed_color"]
				}},
				'title': {'text': 'Cover Me with Simplunium', 'color': 'gray'}, 'description': {'text': 'Better than diamond armor', 'color': 'green'}, 'frame': 'task', 'show_toast': True, 'announce_to_chat': True, 'hidden': True
			},
			"criteria": {
				"requirement": {
					"trigger": "minecraft:inventory_changed",
					"conditions": {
						"items": [
							{
								"components": {
									"minecraft:custom_data": json.dumps({"smithed": {"dict": {"armor": {"simplunium": True}}}})
								}
							}
						]
					}
				}
			},
			'parent': 'simplenergy:visible/simplunium_pickaxe'
		},
	}
	add_visible_advancements(config, advancements)




	info("User code executed")

