
# Imports
from python_datapack.constants import *
from python_datapack.utils.print import *
from python_datapack.utils.io import *

# Add commands to place and destroy functions for energy items
def add_visible_advancements(config: dict, advancements: dict[str, dict]) -> None:
	database: dict = config['database']
	destination_folder: str = f"{config['build_datapack']}/data/simplenergy/advancement/visible"
	os.makedirs(destination_folder, exist_ok = True)

	for item, adv in advancements.items():
		data: dict = database.get(item)
		advancement = {"display":{}, "criteria": {}, "requirements": [["requirement"]]}

		# Set icon
		if not adv.get("display", {}).get("icon"):
			icon = {"id": data["id"]}
			components_to_copy = ["custom_model_data", "dyed_color", "profile"]
			for component in components_to_copy:
				if data.get(component):
					if not icon.get("components"):
						icon["components"] = {}
					icon["components"][f"minecraft:{component}"] = data[component]
			advancement["display"]["icon"] = icon
		
		# Set the criteria
		if not adv.get("criteria"):
			criteria = {"requirement": {"trigger": "minecraft:inventory_changed","conditions": {"items": [{"components": {}}]}}}
			criteria["requirement"]["conditions"]["items"][0]["components"]["minecraft:custom_data"] = json.dumps({config['namespace']:{item:True}})
			advancement["criteria"] = criteria

		# Set the advancement
		advancement = super_merge_dict(advancement, adv)
		write_to_file(f"{destination_folder}/{item}.json", super_json_dump(advancement, max_level = -1))

	return

