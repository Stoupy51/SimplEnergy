
# Imports
import json
import os

from beet import ItemModel, Texture
from stewbeet.core import Mem
from stewbeet.core.utils.io import super_json_dump
from stouputils.io import super_json_load

# Constants
GUI_VANILLA_ITEM: str = "cobblestone"

# Utility function to deep copy a json object
def deepcopy(x):
	return json.loads(json.dumps(x))

# Setup GUI in resource packs
def setup_gui_in_resource_packs() -> dict[str, str]:
	namespace: str = Mem.ctx.project_id
	textures_folder: str = Mem.ctx.meta.stewbeet.textures_folder
	# List gui asset filenames and map with 'gui/{filename}' keys
	filenames: list[str] = os.listdir(f"{textures_folder}/gui")
	gui_models: dict[str, str] = {f"gui/{x}": f"{namespace}:{x.replace('.png', '')}" for x in filenames if x.endswith(".png")}

	# Write custom models
	base: dict = {
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
		content: dict = deepcopy(base)
		content["textures"]["layer0"] = model.replace(":", ":item/")

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

		# Register GUI item model and texture via stewbeet assets
		model_name = gui.replace('.png', '')
		Mem.ctx.assets[namespace].item_models[model_name] = ItemModel(
			super_json_dump(content, max_level=3)
		)
		src = f"{textures_folder}/{gui}"
		mcmeta = None if not os.path.exists(src + ".mcmeta") else super_json_load(src + ".mcmeta")
		Mem.ctx.assets[namespace].textures[f"item/{model_name}"] = Texture(
			source_path=src,
			mcmeta=mcmeta
		)

	return gui_models


