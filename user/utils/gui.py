
# Imports
from python_datapack.utils.print import *
from python_datapack.utils.io import *
from python_datapack.manual.main import deepcopy
GUI_VANILLA_ITEM = "cobblestone"

# Setup GUI in resource packs
def setup_gui_in_resource_packs(config: dict) -> dict[str, str]:
	namespace: str = config['namespace']
	gui_textures: list[str] = [x for x in config['textures_files'] if x.startswith('gui/')]
	gui_models: dict[str, str] = {x: f"{namespace}:{x.replace('.png', '')}" for x in gui_textures}

	# Write custom models
	base = {
		"textures" : {},
		"elements": [ 
			{
				"from": [ -16, -16, 15.9375 ],
				"to": [ 32, 32, 16 ],
				"faces": {
					"north": { "uv": [ 11, 16, 0, 5 ], "rotation": 180, "texture": "#layer0" },
					"south": { "uv": [ 0, 5, 11, 16 ], "texture": "#layer0" }
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
	for gui, model in gui_models.items():
		content = deepcopy(base)
		content["textures"]["layer0"] = model.replace(':', ':item/')
		path: str = model.replace(':', '/models/item/')
		path = f"{config['build_resource_pack']}/assets/{path}.json"

		if "electric_brewing_stand" in gui:
			content["display"]["gui"]["translation"] = [0, 38, -76]	
		elif "electric_furnace" in gui:
			content["display"]["gui"]["translation"] = [ 0, 75, -76 ]
		elif "electric_smelter" in gui:
			content["display"]["gui"]["translation"] = [ 0, 75, -76 ]
		elif "furnace_generator" in gui:
			content["display"]["gui"]["translation"] = [ 0, 39, -76 ]
		elif "pulverizer" in gui:
			content["display"]["gui"]["translation"] = [ -78, 75, -76 ]
		else:
			content["display"].pop("gui")
			content.pop("elements")
			content["parent"] = "item/generated"
		
		write_to_file(path, super_json_dump(content, max_level = 3))

		# Copy the texture
		source = f"{config['assets_folder']}/textures/{gui}"
		destination = f"{config['build_resource_pack']}/assets/{config['namespace']}/textures/item/{gui}"
		super_copy(source, destination)
		if os.path.exists(source + ".mcmeta"):
			super_copy(source + ".mcmeta", destination + ".mcmeta")
		
		# Write the file in items/
		path = f"{config['build_resource_pack']}/assets/{config['namespace']}/items/{gui.replace('.png', '')}.json"
		write_to_file(path, super_json_dump({
			"model": {
				"type": "minecraft:model",
				"model": f"{config['namespace']}:item/{gui.replace('.png', '')}"
			}
		}))

	return gui_models


