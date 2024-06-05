
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
	cable_update_content: str = f"""
# Stop if not {namespace} cable
execute unless entity @s[tag={namespace}.custom_block] run return 0

# Get the base model
"""

	# Setup the vanilla model
	vanilla_model: str = f"{build_resource_pack}/assets/minecraft/models/item/{GUI_VANILLA_ITEM}.json"
	content = {"parent": f"block/{GUI_VANILLA_ITEM}", "overrides": []}

	# Setup cables models
	cables = [item for item in database if "cable" in item]
	for i, cable in enumerate(cables):
		cmd = STARTING_CMD + 200 + i*100

		# Update the cable model
		cable_update_content += f"execute if entity @s[tag={namespace}.{cable}] run scoreboard players set #model {namespace}.data {cmd}\n"

		# Link vanilla model
		for i in range(64):

			# Get faces
			down = "d" if i & 1 else ""
			up = "u" if i & 2 else ""
			north = "n" if i & 4 else ""
			south = "s" if i & 8 else ""
			west = "w" if i & 16 else ""
			east = "e" if i & 32 else ""
			model_path = f"{namespace}:block/{cable}/wire_{up}{down}{north}{south}{east}{west}"
			if model_path.endswith("_"):
				model_path = model_path[:-1]
			
			# Add override
			content["overrides"].append({"predicate": {"custom_model_data": cmd + i}, "model": model_path})
		
		# Copy texture
		dest = f"{build_resource_pack}/assets/{namespace}/textures/item/{cable}.png"
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

	
	# Write the vanilla model
	sort_override_model(content)
	write_to_file(vanilla_model, super_json_dump(content))
	
	# Update_cable_model function
	cable_update_content += f"""
# Add the model offset
scoreboard players operation #model {namespace}.data += @s energy.data

# Apply the model
item replace entity @s container.0 with {GUI_VANILLA_ITEM}
execute store result entity @s item.components."minecraft:custom_model_data" int 1 run scoreboard players get #model {namespace}.data
scoreboard players reset #model {namespace}.data
"""
	write_to_file(f"{build_datapack}/data/{namespace}/function/calls/cable_update.mcfunction", cable_update_content)

	# Add the function to the cable_update function tag
	write_to_file(f"{build_datapack}/data/energy/tags/function/v1/cable_update.json", super_json_dump({"values": [f"{namespace}:calls/cable_update"]}))

	return



