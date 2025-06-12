
# ruff: noqa: E501
# Imports
from typing import Any

import stouputils as stp
from beet import Advancement, Texture
from stewbeet.core import *
from stewbeet.core.utils.io import super_merge_dict


# Add visible advancements to the datapack
def add_visible_advancements() -> None:
	ns: str = Mem.ctx.project_id
	textures_folder: str = Mem.ctx.meta.stewbeet.textures_folder

	# Copy advancement texture
	source: str = f"{textures_folder}/advancement_background.png"
	Mem.ctx.assets[ns].textures["block/gui/advancement_background"] = Texture(source_path=source)

	# Advancements list
	background: str = f"{ns}:block/gui/advancement_background"
	advancements: dict[str, dict] = {
		"simplunium_ingot": {"display": {"title": {"text": "SimplEnergy", "color": "gray"}, "description": {"text": "Obtain a Simplunium Ingot", "color": "green"}, "background": background}},
		"advanced_battery": {"display": {"title": {"text": "More Energy Storage!", "color": "gray"}, "description": {"text": "Upgrade a Simple Battery", "color": "green"}}, "parent": f"{ns}:visible/simple_battery"},
		"advanced_cable": {"display": {"title": {"text": "Better Cable, Faster Transfer", "color": "gray"}, "description": {"text": "Upgrade a Simple Cable", "color": "green"}}, "parent": f"{ns}:visible/simple_cable"},
		"cauldron_generator": {"display": {"title": {"text": "The Simplest Generator", "color": "gray"}, "description": {"text": "Craft your first Cauldron Generator", "color": "green"}}, "parent": f"{ns}:visible/simplunium_ingot"},
		"pulverizer": {"display": {"title": {"text": "Pulverizing", "color": "gray"}, "description": {"text": "Craft your first Pulverizer", "color": "green"}}, "parent": f"{ns}:visible/electric_brewing_stand"},
		"electric_brewing_stand": {"display": {"title": {"text": "Faster Brewing", "color": "gray"}, "description": {"text": "Obtain an Electric Brewing Stand", "color": "green"}}, "parent": f"{ns}:visible/electric_smelter"},
		"electric_furnace": {"display": {"title": {"text": "A Better Furnace", "color": "gray"}, "description": {"text": "Craft your first Electric Furnace", "color": "green"}}, "parent": f"{ns}:visible/simplunium_ingot"},
		"electric_smelter": {"display": {"title": {"text": "A Very Fast Smelter", "color": "gray"}, "description": {"text": "Upgrade an Electric Furnace", "color": "green"}}, "parent": f"{ns}:visible/electric_furnace"},
		"elite_battery": {"display": {"title": {"text": "More and More Energy Storage!", "color": "gray"}, "description": {"text": "Upgrade an Advanced Battery", "color": "green"}}, "parent": f"{ns}:visible/advanced_battery"},
		"elite_cable": {"display": {"title": {"text": "More and More Transfer", "color": "gray"}, "description": {"text": "Upgrade an Advanced Cable", "color": "green"}}, "parent": f"{ns}:visible/advanced_cable"},
		"furnace_generator": {"display": {"title": {"text": "Also named the Coal Generator", "color": "gray"}, "description": {"text": "Craft your first Furnace Generator", "color": "green"}}, "parent": f"{ns}:visible/cauldron_generator"},
		"multimeter": {"display": {"title": {"text": "Measuring Energy", "color": "gray"}, "description": {"text": "Obtain a Multimeter", "color": "green"}}, "parent": f"{ns}:visible/simplunium_ingot"},
		"simple_battery": {"display": {"title": {"text": "A Simple Energy Storage", "color": "gray"}, "description": {"text": "Craft your first Simple Battery", "color": "green"}}, "parent": f"{ns}:visible/simplunium_ingot"},
		"simple_cable": {"display": {"title": {"text": "Energy Needs Cables", "color": "gray"}, "description": {"text": "Get your first Simple Cable", "color": "green"}}, "parent": f"{ns}:visible/multimeter"},
		"simplunium_pickaxe": {"display": {"title": {"text": "Simplunium Age", "color": "gray"}, "description": {"text": "Craft a Simplunium Pickaxe", "color": "green"}}, "parent": f"{ns}:visible/simplunium_ingot"},
		"solar_panel": {"display": {"title": {"text": "Use the Sunlight", "color": "gray"}, "description": {"text": "Get your first Solar Panel", "color": "green"}}, "parent": f"{ns}:visible/furnace_generator"},
		"wrench": {"display": {"title": {"text": "Having the control!", "color": "gray"}, "description": {"text": "Craft a wrench to rotate machines and break cables", "color": "green"}, "hidden": True}, "parent": f"{ns}:visible/simplunium_armor"},

		"simplunium_armor": {
			"display": { "icon": {"id": Mem.definitions["simplunium_chestplate"]["id"],"components": {
					"minecraft:item_model": Mem.definitions["simplunium_chestplate"]["item_model"],
				}},
				"title": {"text": "Cover Me with Simplunium", "color": "gray"},
				"description": {"text": "Better than iron armor", "color": "green"},
				"hidden": True
			},
			"criteria": {"requirement": {"trigger": "minecraft:inventory_changed","conditions": {
				"items": [{"predicates": {"minecraft:custom_data": {"smithed": {"dict": {"armor": {"simplunium": True}}}}}
			}]}}},
			"parent": f"{ns}:visible/simplunium_pickaxe"
		},
	}

	# Add default display options
	display_options: dict[str, bool | str] = {"frame": "task", "show_toast": True, "announce_to_chat": True, "hidden": False}
	for advancement in advancements.values():
		for key, value in display_options.items():
			if not advancement.get("display", {}).get(key):
				advancement["display"][key] = value


	# For each advancement,
	for item, adv in advancements.items():
		data: dict = Mem.definitions.get(item, {})
		advancement: dict[str, Any] = {"display":{}, "criteria": {}, "requirements": [["requirement"]]}

		# Set icon
		if not adv.get("display", {}).get("icon"):
			icon: dict[str, Any] = {"id": data["id"]}
			components_to_copy: list[str] = ["item_model", "profile"]
			for component in components_to_copy:
				if data.get(component):
					if not icon.get("components"):
						icon["components"] = {}
					icon["components"][f"minecraft:{component}"] = data[component]
			advancement["display"]["icon"] = icon

		# Set the criteria, if not already set
		if not adv.get("criteria"):
			criteria: dict[str, Any] = {"requirement": {"trigger": "minecraft:inventory_changed","conditions": {"items": [{"predicates": {}}]}}}
			criteria["requirement"]["conditions"]["items"][0]["predicates"]["minecraft:custom_data"] = {ns:{item:True}}
			advancement["criteria"] = criteria

		# Set the advancement
		advancement = super_merge_dict(advancement, adv)
		Mem.ctx.data[ns].advancements[f"visible/{item}"] = Advancement(stp.super_json_dump(advancement, max_level = 7))

	return

