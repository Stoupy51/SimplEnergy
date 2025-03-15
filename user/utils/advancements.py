
# Imports
import stouputils as stp
from python_datapack.utils.io import *

# Add visible advancements to the datapack
def add_visible_advancements(config: dict) -> None:
	database: dict = config['database']
	assets_folder: str = config['assets_folder']
	build_resource_pack: str = config['build_resource_pack']
	namespace: str = config['namespace']

	# Copy advancement texture
	source: str = f"{assets_folder}/textures/advancement_background.png"
	destination: str = f"{build_resource_pack}/assets/{namespace}/textures/block/gui/advancement_background.png"
	super_copy(source, destination)

	# Advancements list
	background: str = f"{namespace}:textures/block/gui/advancement_background.png"
	advancements: dict[str, dict] = {
		"simplunium_ingot": {'display': {'title': {'text': 'SimplEnergy', 'color': 'gray'}, 'description': {'text': 'Obtain a Simplunium Ingot', 'color': 'green'}, 'background': background, 'frame': 'task', 'show_toast': True, 'announce_to_chat': True, 'hidden': False}},
		"advanced_battery": {'display': {'title': {'text': 'More Energy Storage!', 'color': 'gray'}, 'description': {'text': 'Upgrade a Simple Battery', 'color': 'green'}, 'frame': 'task', 'show_toast': True, 'announce_to_chat': True, 'hidden': False}, 'parent': 'simplenergy:visible/simple_battery'},
		"advanced_cable": {'display': {'title': {'text': 'Better Cable, Faster Transfer', 'color': 'gray'}, 'description': {'text': 'Upgrade a Simple Cable', 'color': 'green'}, 'frame': 'task', 'show_toast': True, 'announce_to_chat': True, 'hidden': False}, 'parent': 'simplenergy:visible/simple_cable'},
		"cauldron_generator": {'display': {'title': {'text': 'The Simplest Generator', 'color': 'gray'}, 'description': {'text': 'Craft your first Cauldron Generator', 'color': 'green'}, 'frame': 'task', 'show_toast': True, 'announce_to_chat': True, 'hidden': False}, 'parent': 'simplenergy:visible/simplunium_ingot'},
		"pulverizer": {'display': {'title': {'text': 'Pulverizing', 'color': 'gray'}, 'description': {'text': 'Craft your first Pulverizer', 'color': 'green'}, 'frame': 'task', 'show_toast': True, 'announce_to_chat': True, 'hidden': False}, 'parent': 'simplenergy:visible/electric_brewing_stand'},
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
			'display': { "icon": {"id": database["simplunium_chestplate"]["id"],"components": {
					"minecraft:item_model": database["simplunium_chestplate"]["item_model"],
				}},
				'title': {'text': 'Cover Me with Simplunium', 'color': 'gray'},
				'description': {'text': 'Better than diamond armor', 'color': 'green'},
				'frame': 'task', 'show_toast': True, 'announce_to_chat': True, 'hidden': True
			},
			"criteria": {"requirement": {"trigger": "minecraft:inventory_changed","conditions": {
				"items": [{"predicates": {"minecraft:custom_data": json.dumps({"smithed": {"dict": {"armor": {"simplunium": True}}}})}
			}]}}},
			'parent': 'simplenergy:visible/simplunium_pickaxe'
		},
	}

	destination_folder: str = f"{config['build_datapack']}/data/simplenergy/advancement/visible"
	os.makedirs(destination_folder, exist_ok = True)

	for item, adv in advancements.items():
		data: dict = database.get(item)
		advancement = {"display":{}, "criteria": {}, "requirements": [["requirement"]]}

		# Set icon
		if not adv.get("display", {}).get("icon"):
			icon = {"id": data["id"]}
			components_to_copy = ["item_model", "dyed_color", "profile"]
			for component in components_to_copy:
				if data.get(component):
					if not icon.get("components"):
						icon["components"] = {}
					icon["components"][f"minecraft:{component}"] = data[component]
			advancement["display"]["icon"] = icon
		
		# Set the criteria
		if not adv.get("criteria"):
			criteria = {"requirement": {"trigger": "minecraft:inventory_changed","conditions": {"items": [{"predicates": {}}]}}}
			criteria["requirement"]["conditions"]["items"][0]["predicates"]["minecraft:custom_data"] = json.dumps({namespace:{item:True}})
			advancement["criteria"] = criteria

		# Set the advancement
		advancement = super_merge_dict(advancement, adv)
		write_to_file(f"{destination_folder}/{item}.json", stp.super_json_dump(advancement, max_level = -1))

	return

