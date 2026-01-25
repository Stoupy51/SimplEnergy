
# Imports
from stewbeet import (
	Context,
	DefaultOre,
	EquipmentsConfig,
	Ingr,
	JsonDict,
	VanillaEquipments,
	add_energy_lore_to_definitions,
	add_item_model_component,
	add_item_name_and_lore_if_missing,
	add_private_custom_data_for_namespace,
	add_recipes_for_all_dusts,
	add_smithed_ignore_vanilla_behaviours_convention,
	export_all_definitions_to_json,
	generate_custom_records,
	generate_everything_about_these_materials,
	set_manual_components,
)

from .additions.energy import main_additions as energy_additions
from .additions.material import main_additions as material_additions
from .additions.misc import main_additions as misc_additions
from .manual_assets import manual_assets_main

# Constants
simplunium_durability = 3 * VanillaEquipments.PICKAXE.value[DefaultOre.IRON]["durability"]
ORES_CONFIGS: dict[str, EquipmentsConfig|None] = {
	"simplunium_ingot":	EquipmentsConfig(
		DefaultOre.IRON, simplunium_durability, {"attack_damage": 1, "armor": 0.5, "mining_efficiency": 2}
	),
}
DUSTS_CONFIGS: dict[str, tuple[list[str|JsonDict], Ingr]] = {
	"copper":	(["raw_copper","copper_ore","deepslate_copper_ore"],												Ingr("minecraft:copper_ingot")),
	"iron":		(["raw_iron","iron_ore","deepslate_iron_ore"],														Ingr("minecraft:iron_ingot")),
	"gold":		(["raw_gold","gold_ore","deepslate_gold_ore"],														Ingr("minecraft:gold_ingot")),
	"lapis":	(["lapis_ore","deepslate_lapis_ore"],																Ingr("minecraft:lapis_lazuli")),
	"diamond":	(["diamond_ore","deepslate_diamond_ore"],															Ingr("minecraft:diamond")),
	"emerald":	(["emerald_ore","deepslate_emerald_ore"],															Ingr("minecraft:emerald")),
	"quartz":	(["nether_quartz_ore"],																				Ingr("minecraft:quartz")),
	"netherite":(["ancient_debris"],																				Ingr("minecraft:netherite_scrap")),
	"tin":		([Ingr(x, "mechanization") for x in ["raw_tin","tin_ore","deepslate_tin_ore"]],						Ingr("tin_ingot", "mechanization")),
	"titanium":	([Ingr(x, "mechanization") for x in ["raw_titanium","titanium_ore","deepslate_titanium_ore"]],		Ingr("titanium_ingot", "mechanization")),
}

# Make all the item definitions
def beet_default(ctx: Context) -> None:

	# Generate ores in database
	generate_everything_about_these_materials(ORES_CONFIGS)

	# Generate dusts in database
	add_recipes_for_all_dusts(DUSTS_CONFIGS)

	# Generate custom disc records
	generate_custom_records("auto")

	# Apply database additions
	material_additions()
	energy_additions()
	misc_additions()

	# Final adjustments
	add_energy_lore_to_definitions()
	add_item_model_component(black_list = ["simple_cable", "advanced_cable", "elite_cable"])
	add_item_name_and_lore_if_missing()
	add_private_custom_data_for_namespace()
	add_smithed_ignore_vanilla_behaviours_convention()
	set_manual_components(white_list=["item_name", "lore", "custom_name", "attribute_modifiers"])

	# Copy manual assets that can't be generated
	manual_assets_main()

	# Debug purposes: export all definitions to a single json file
	export_all_definitions_to_json(f"{ctx.directory}/definitions_debug.json")

