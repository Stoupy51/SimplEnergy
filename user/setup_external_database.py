
# Imports
from python_datapack.utils.database_helper import *

# Main function should return a database
def main(config: dict) -> dict[str, dict]:

	## TODO: complete item definition (and dynamic)
	external_database: dict[str, dict] = {
		"mechanization:raw_tin": {"id":"minecraft:structure_block",					"custom_data": {"smithed": {"dict": {"raw": {"tin": True}}},			"mechanization": {"id": "raw_tin"}}},
		"mechanization:tin_ore": {"id":"minecraft:blast_furnace",					"custom_data": {"smithed": {"dict": {"ore": {"tin": True}}},			"mechanization": {"id": "tin_ore"}}},
		"mechanization:deepslate_tin_ore": {"id":"minecraft:blast_furnace",			"custom_data": {"smithed": {"dict": {"ore": {"tin": True}}},			"mechanization": {"id": "tin_ore"}}},
		"mechanization:tin_ingot": {"id":"minecraft:structure_block",				"custom_data": {"smithed": {"dict": {"ingot": {"tin": True}}},			"mechanization": {"id": "tin_ingot"}}},

		"mechanization:raw_titanium": {"id":"minecraft:structure_block",			"custom_data": {"smithed": {"dict": {"raw": {"titanium": True}}},		"mechanization": {"id": "raw_titanium"}}},
		"mechanization:titanium_ore": {"id":"minecraft:blast_furnace",				"custom_data": {"smithed": {"dict": {"ore": {"titanium": True}}},		"mechanization": {"id": "titanium_ore"}}},
		"mechanization:deepslate_titanium_ore": {"id":"minecraft:blast_furnace",	"custom_data": {"smithed": {"dict": {"ore": {"titanium": True}}},		"mechanization": {"id": "titanium_ore"}}},
		"mechanization:titanium_ingot": {"id":"minecraft:structure_block",			"custom_data": {"smithed": {"dict": {"ingot": {"titanium": True}}},		"mechanization": {"id": "titanium_ingot"}}},
	}

	# Mechanization config
	add_item_name_and_lore_if_missing(config, external_database, is_external = True)

	# Debug external database and return it
	path: str = config["database_debug"]
	path: list[str] = path.split("/")[:-1]
	path: str = "/".join(path) + "/external_database.json"
	with super_open(path, "w") as f:
		super_json_dump(external_database, f)
	return external_database

