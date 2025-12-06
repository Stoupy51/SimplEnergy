
# Imports
import stouputils as stp
from stewbeet import Context, JsonDict, Mem, add_item_name_and_lore_if_missing


# Make all the external item definitions
def beet_default(ctx: Context) -> None:
	if Mem.ctx is None: # type: ignore
		Mem.ctx = ctx

	# Replace temporarily the main definitions with the external definitions (for utility functions)
	main_definitions: JsonDict = Mem.definitions
	Mem.definitions = Mem.external_definitions

	# Add Mechanization definitions
	Mem.definitions.update({
		"mechanization:raw_tin": {"id":"minecraft:structure_block",					"custom_data": {"smithed": {"dict": {"raw": {"tin": True}}},			"mechanization": {"id": "raw_tin"}}},
		"mechanization:tin_ore": {"id":"minecraft:blast_furnace",					"custom_data": {"smithed": {"dict": {"ore": {"tin": True}}},			"mechanization": {"id": "tin_ore"}}},
		"mechanization:deepslate_tin_ore": {"id":"minecraft:blast_furnace",			"custom_data": {"smithed": {"dict": {"ore": {"tin": True}}},			"mechanization": {"id": "tin_ore"}}},
		"mechanization:tin_ingot": {"id":"minecraft:structure_block",				"custom_data": {"smithed": {"dict": {"ingot": {"tin": True}}},			"mechanization": {"id": "tin_ingot"}}},

		"mechanization:raw_titanium": {"id":"minecraft:structure_block",			"custom_data": {"smithed": {"dict": {"raw": {"titanium": True}}},		"mechanization": {"id": "raw_titanium"}}},
		"mechanization:titanium_ore": {"id":"minecraft:blast_furnace",				"custom_data": {"smithed": {"dict": {"ore": {"titanium": True}}},		"mechanization": {"id": "titanium_ore"}}},
		"mechanization:deepslate_titanium_ore": {"id":"minecraft:blast_furnace",	"custom_data": {"smithed": {"dict": {"ore": {"titanium": True}}},		"mechanization": {"id": "titanium_ore"}}},
		"mechanization:titanium_ingot": {"id":"minecraft:structure_block",			"custom_data": {"smithed": {"dict": {"ingot": {"titanium": True}}},		"mechanization": {"id": "titanium_ingot"}}},
	})

	# Mechanization config
	add_item_name_and_lore_if_missing(is_external=True)

	# Debug external definitions
	stp.json_dump(Mem.definitions, f"{Mem.ctx.directory}/external_definitions.json")

	# Restore the main definitions
	Mem.external_definitions = Mem.definitions
	Mem.definitions = main_definitions

