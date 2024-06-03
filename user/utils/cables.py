
# Imports
from python_datapack.utils.print import *
from python_datapack.utils.io import *
from user.setup_database import STARTING_CMD
from user.utils.gui import GUI_VANILLA_ITEM

# Setup machines work and visuals
def setup_cables_models(config: dict) -> None:
	database: dict[str, dict] = config['database']
	namespace: str = config['namespace']
	build_datapack: str = config['build_datapack']
	build_resource_pack: str = config['build_resource_pack']
	textures_folder = config['textures_folder']
	update_cable_model: str = f"{build_datapack}/data/{namespace}/function/calls/update_cable_model.mcfunction"

	# Setup the vanilla model
	vanilla_model: str = f"{build_resource_pack}/assets/minecraft/models/item/{GUI_VANILLA_ITEM}.json"
	content = {"parent": f"block/{GUI_VANILLA_ITEM}", "overrides": []}

	# Setup cables models
	cables = [item for item in database if "cable" in item]
	for i, cable in enumerate(cables):
		cmd = STARTING_CMD + 200 + i*100

		# Update the cable model
		write_to_file(update_cable_model, f"execute if entity @s[tag={namespace}.{cable}] run scoreboard players set #model {namespace}.data {cmd}\n", prepend = True)

		# Link vanilla model
		for i in range(64):
			down = "d" if i & 1 else ""
			up = "u" if i & 2 else ""
			north = "n" if i & 4 else ""
			south = "s" if i & 8 else ""
			west = "w" if i & 16 else ""
			east = "e" if i & 32 else ""
			model = f"{namespace}:block/{cable}/wire_{up}{down}{north}{south}{east}{west}"
			if model.endswith("_"):
				model = model[:-1]
			content["overrides"].append({"predicate": {"custom_model_data": cmd + i}, "model": model})
		
		# Copy texture
		dest = f"{build_resource_pack}/assets/{namespace}/textures/item/{cable}.png"
		src = f"{textures_folder}/{cable}.png"
		super_copy(src, dest)
		if os.path.exists(src + ".mcmeta"):
			super_copy(src + ".mcmeta", dest + ".mcmeta")
		
		# On placement, rotate
		on_placement: str = f"{build_datapack}/data/{namespace}/function/custom_blocks/{cable}/place_secondary.mcfunction"
		write_to_file(on_placement, f"\n# Cable rotation for models\ndata modify entity @s Rotation set value [0.0f, 180.0f]\ndata modify entity @s transformation.translation[1] set value 0.25f\n")

	
	# Write the vanilla model
	sort_override_model(content)
	write_to_file(vanilla_model, super_json_dump(content))
	
	# Update_cable_model function
	write_to_file(update_cable_model, f"# Update the cable model\ndata modify entity @s item set value {{\"id\":\"minecraft:{GUI_VANILLA_ITEM}\",count:1}}\n", prepend = True)



