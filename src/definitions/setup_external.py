
# Imports
from stewbeet import Context, ExternalItem, Mem, add_item_name_and_lore_if_missing, export_all_definitions_to_json


# Make all the external item definitions
def beet_default(ctx: Context) -> None:

	# Add Mechanization definitions (loot table is only required if the external item is a result of a recipe)
	ExternalItem(
		id="mechanization:raw_tin",
		custom_data_predicate={"smithed": {"dict": {"raw": {"tin": True}}}, "mechanization": {"id": "raw_tin"}},
		#loot_table="mechanization:base/tin_raw"
	)
	ExternalItem(
		id="mechanization:tin_ore",
		custom_data_predicate={"smithed": {"dict": {"ore": {"tin": True}}}, "mechanization": {"id": "tin_ore"}},
		#loot_table="mechanization:base/tin_ore"
	)
	ExternalItem(
		id="mechanization:deepslate_tin_ore",
		custom_data_predicate={"smithed": {"dict": {"ore": {"tin": True}}}, "mechanization": {"id": "tin_ore"}},
		#loot_table="mechanization:base/tin_ore_deepslate"
	)
	ExternalItem(
		id="mechanization:tin_ingot",
		custom_data_predicate={"smithed": {"dict": {"ingot": {"tin": True}}}, "mechanization": {"id": "tin_ingot"}},
		loot_table="mechanization:base/tin_ingot"
	)
	ExternalItem(
		id="mechanization:raw_titanium",
		custom_data_predicate={"smithed": {"dict": {"raw": {"titanium": True}}}, "mechanization": {"id": "raw_titanium"}},
		#loot_table="mechanization:base/titanium_raw"
	)
	ExternalItem(
		id="mechanization:titanium_ore",
		custom_data_predicate={"smithed": {"dict": {"ore": {"titanium": True}}}, "mechanization": {"id": "titanium_ore"}},
		#loot_table="mechanization:base/titanium_ore"
	)
	ExternalItem(
		id="mechanization:deepslate_titanium_ore",
		custom_data_predicate={"smithed": {"dict": {"ore": {"titanium": True}}}, "mechanization": {"id": "titanium_ore"}},
		#loot_table="mechanization:base/titanium_ore_deepslate"
	)
	ExternalItem(
		id="mechanization:titanium_ingot",
		custom_data_predicate={"smithed": {"dict": {"ingot": {"titanium": True}}}, "mechanization": {"id": "titanium_ingot"}},
		loot_table="mechanization:base/titanium_ingot"
	)

	# Add item name and lore to components if missing
	add_item_name_and_lore_if_missing(is_external=True)

	# Debug purposes: export all definitions to a single json file
	export_all_definitions_to_json(f"{Mem.ctx.directory}/external_definitions.json", is_external=True)

