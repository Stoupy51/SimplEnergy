
# Imports
from python_datapack.utils.print import *
from python_datapack.utils.io import *
from user.setup_database import STARTING_CMD
from copy import deepcopy
GUI_VANILLA_ITEM = "cobblestone"

# Util function to get next custom_model_data (decreasing)
next_cmd: int = STARTING_CMD + 1000
def get_next_cmd() -> int:
	global next_cmd
	next_cmd -= 1
	return next_cmd

# Setup GUI in resource packs
def setup_gui_in_resource_packs(config: dict) -> dict[str, int]:
	generated_gui: dict[str, int] = {}	# {gui_name: custom_model_data}
	gui_textures = [x for x in config['textures_files'] if x.startswith('gui/')]
	for gui in gui_textures:
		generated_gui[gui] = get_next_cmd()
	
	# Write vanilla model
	vanilla_gui = f"{config['build_resource_pack']}/assets/minecraft/models/item/{GUI_VANILLA_ITEM}.json"
	model = {"parent": f"block/{GUI_VANILLA_ITEM}", "overrides": []}
	for gui, cmd in generated_gui.items():
		model["overrides"].append({"predicate": {"custom_model_data": cmd}, "model": f"simplenergy:block/{gui.replace('.png', '')}"})
	sort_override_model(model)
	content = super_json_dump(model).replace('{"','{ "').replace('"}','" }').replace(',"', ', "')
	write_to_file(vanilla_gui, content)

	## Write custom models
	base = {
		"textures" : {},
		"elements": [ 
			{
				"from": [ -16, -16, 15.9375 ],
				"to": [ 32, 32, 16 ],
				"faces": {
					"north": { "uv": [ 11, 16, 0, 5 ], "rotation": 180, "texture": "#all" },
					"south": { "uv": [ 0, 5, 11, 16 ], "texture": "#all" }
				}
			}
		],
		"display": {
			"firstperson_lefthand": {"rotation": [ 0, 0, 0 ],"translation": [ 0, 0, 0 ],"scale": [ 0, 0, 0 ]},
			"gui": {"rotation": [ 0, 0, 0 ],"scale": [ 3.66, 3.66, 3.66 ]},
			"ground": {"rotation": [ 0, 0, 0 ],"translation": [ 0, 0, 0 ],"scale": [ 0, 0, 0 ]}
		},
		"gui_light":"front"
	}
	for gui, cmd in generated_gui.items():
		content = deepcopy(base)
		content["textures"]["all"] = f"{config['namespace']}:block/{gui.replace('.png', '')}"
		path = f"{config['build_resource_pack']}/assets/{config['namespace']}/models/block/{gui.replace('.png', '.json')}"

		if "electric_brewing_stand" in gui:
			content["display"]["gui"]["translation"] = [0, 38, -76]	
		elif "electric_furnace" in gui:
			content["display"]["gui"]["translation"] = [ 0, 75, -76 ]
		elif "electric_smelter" in gui:
			content["display"]["gui"]["translation"] = [ 0, 75, -76 ]
		elif "furnace_generator" in gui:
			content["display"]["gui"]["translation"] = [ 0, 39, -76 ]
		
		write_to_file(path, super_json_dump(content, max_level = 3))

		# Copy the texture
		source = f"{config['textures_folder']}/{gui}"
		destination = f"{config['build_resource_pack']}/assets/{config['namespace']}/textures/block/{gui}"
		super_copy(source, destination)
		if os.path.exists(source + ".mcmeta"):
			super_copy(source + ".mcmeta", destination + ".mcmeta")


	return generated_gui

