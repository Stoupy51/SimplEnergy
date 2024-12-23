
# Imports
from python_datapack.utils.print import *
from python_datapack.utils.io import *
from user.utils.gui import GUI_VANILLA_ITEM

# Constants
CABLE_MODELS_FOLDER: str = os.path.dirname(os.path.abspath(__file__)) + "/cable_models"

# Setup machines work and visuals
def setup_cables_models(config: dict) -> None:
	database: dict[str, dict] = config['database']
	namespace: str = config['namespace']
	build_datapack: str = config['build_datapack']
	build_resource_pack: str = config['build_resource_pack']
	textures_folder = config['assets_folder'] + "/textures"
	cable_update_content: str = f"""
# Stop if not {namespace} cable
execute unless entity @s[tag={namespace}.custom_block] run return 0

# Get the base model
"""

	# Setup parent cable model
	parent_model: dict = {"parent":"block/block","display":{"head":{"rotation":[0,0,0],"translation":[0,-30.42,0],"scale":[1.605,1.605,1.605]},"fixed":{"rotation":[90,0,0],"translation":[0,0,-8],"scale":[2.02,2.02,2.02]}}}
	path: str = f"{build_resource_pack}/assets/{namespace}/models/block/cable_base.json"
	write_to_file(path, super_json_dump(parent_model))

	# Setup cables models
	cables: list[str] = [item for item in database if "cable" in item]
	for i, cable in enumerate(cables):
		# Setup vanilla model for this cable
		base_model: str = f"{build_resource_pack}/assets/{namespace}/models/item/{cable}.json"
		content: dict = {"parent": "block/block", "overrides": []}

		# Create all the cables variants models
		for root, _, files in os.walk(CABLE_MODELS_FOLDER):
			for file in files:
				if file.endswith(".json"):
					path: str = f"{root}/{file}"
					json_file: dict = super_json_load(path)
					new_json: dict = {
						"parent": f"{namespace}:block/cable_base",
						"textures": {"0": f"{namespace}:block/{cable}"}
					}
					new_json.update(json_file)
					dest: str = f"{build_resource_pack}/assets/{namespace}/models/block/{cable}/{file}"
					write_to_file(dest, super_json_dump(new_json, max_level = 3))

		# Link vanilla model
		for i in range(64):
			# Get faces
			down = "d" if i & 1 else ""
			up = "u" if i & 2 else ""
			north = "n" if i & 4 else ""
			south = "s" if i & 8 else ""
			west = "w" if i & 16 else ""
			east = "e" if i & 32 else ""
			model_path = f"{namespace}:block/{cable}/variant_{up}{down}{north}{south}{east}{west}"
			if model_path.endswith("_"):
				model_path = model_path[:-1]
			
			# Add override
			content["overrides"].append({"predicate": {"custom_model_data": i}, "model": model_path})
		
		# Write the vanilla model for this cable
		sort_override_model(content)
		write_to_file(base_model, super_json_dump(content))
		
		# Copy texture
		dest = f"{build_resource_pack}/assets/{namespace}/textures/block/{cable}.png"
		src = f"{textures_folder}/{cable}.png"
		super_copy(src, dest)
		if os.path.exists(src + ".mcmeta"):
			super_copy(src + ".mcmeta", dest + ".mcmeta")
		
		# On placement, rotate
		on_placement: str = f"{build_datapack}/data/{namespace}/function/custom_blocks/{cable}/place_secondary.mcfunction"
		write_to_file(on_placement, f"""
# Cable rotation for models
data modify entity @s Rotation set value [0.0f, 180.0f]
data modify entity @s transformation.translation[1] set value 0.25f
""")
	
	# Update_cable_model function
	cable_update_content += f"""
# Apply the model
execute if entity @s[tag={namespace}.simple_cable] run item replace entity @s container.0 with {GUI_VANILLA_ITEM}[item_model="{namespace}:simple_cable"]
execute if entity @s[tag={namespace}.advanced_cable] run item replace entity @s container.0 with {GUI_VANILLA_ITEM}[item_model="{namespace}:advanced_cable"]
execute if entity @s[tag={namespace}.elite_cable] run item replace entity @s container.0 with {GUI_VANILLA_ITEM}[item_model="{namespace}:elite_cable"]

# Get the right model
execute store result entity @s item.components."minecraft:custom_model_data" int 1 run scoreboard players get @s energy.data
"""
	write_to_file(f"{build_datapack}/data/{namespace}/function/calls/cable_update.mcfunction", cable_update_content)

	# Add the function to the cable_update function tag
	write_to_file(f"{build_datapack}/data/energy/tags/function/v1/cable_update.json", super_json_dump({"values": [f"{namespace}:calls/cable_update"]}))

	return

