# Imports
from stewbeet import (
	DefaultOre,
	EquipmentsConfig,
	Item,
	JsonDict,
	VanillaEquipments,
	WikiButton,
)

# Constants
SIMPLUNIUM_EQUIPMENTS: EquipmentsConfig = EquipmentsConfig(
	DefaultOre.IRON,
	3 * VanillaEquipments.PICKAXE.value[DefaultOre.IRON]["durability"],
	{"attack_damage": 1, "armor": 0.5, "mining_efficiency": 2},
)
""" Simplunium gear is iron gear with triple durability and the bonuses listed in the attributes. """
ARMOR_PIECES: tuple[str, ...] = ("helmet", "chestplate", "leggings", "boots")
MINING_PIECES: tuple[str, ...] = ("pickaxe", "axe", "shovel", "hoe")
TOOL_PIECES: tuple[str, ...] = ("sword", "spear") + MINING_PIECES


# Functions
def stat_line(label: str, simplunium: float, iron: float) -> JsonDict:
	return {"text": f"\n{label}: {simplunium:g} (iron: {iron:g})", "color": "gray"}

def main_additions() -> None:
	Item.from_id("simplunium_ingot").wiki_buttons = [WikiButton([
		{"text":"Core material of SimplEnergy.","color":"yellow"},
		{"text":"\nRequired for a lot of items in the pack","color":"gray"},
		{"text":"\nSimplunium gear is equivalent to iron, with 3x","color":"gray"},
		{"text":"\nits durability and slightly better stats","color":"gray"},
		{"text":"\nIt is not diamond: its tools cannot mine obsidian or ancient debris","color":"red"},
	])]

	durability_factor: float = SIMPLUNIUM_EQUIPMENTS.pickaxe_durability / VanillaEquipments.PICKAXE.value[DefaultOre.IRON]["durability"]
	bonus: dict[str, float] = SIMPLUNIUM_EQUIPMENTS.attributes
	for piece in ARMOR_PIECES + TOOL_PIECES:
		iron: dict[str, float] = VanillaEquipments[piece.upper()].value[DefaultOre.IRON]
		lines: list[JsonDict] = [{"text": f"Simplunium {piece.capitalize()}", "color": "yellow"}]

		if piece in ARMOR_PIECES:
			lines.append(stat_line("Armor", iron["armor"] + bonus["armor"], iron["armor"]))
		else:
			lines.append(stat_line("Attack damage", iron["attack_damage"] + bonus["attack_damage"], iron["attack_damage"]))
			lines.append(stat_line("Attack speed", 4 + iron["attack_speed"], 4 + iron["attack_speed"]))

		if piece in MINING_PIECES:
			lines.append({"text": f"\nMining efficiency: +{bonus['mining_efficiency']:g} (iron: +0)", "color": "gray"})

		lines.append(stat_line("Durability", iron["durability"] * durability_factor, iron["durability"]))
		if piece == "pickaxe":
			lines.append({"text": "\nMining tier of iron: cannot mine obsidian or ancient debris", "color": "red"})
		Item.from_id(f"simplunium_{piece}").wiki_buttons = [WikiButton(lines)]

