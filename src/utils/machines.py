
# ruff: noqa: E501
# Imports
from stewbeet.core import *

from .pulverizer import pulverizer


# Setup machines work and visuals
def setup_machines(gui: dict[str, str]) -> None:
	ns: str = Mem.ctx.project_id
	GUI_DATA: str = 'tooltip_display={"hide_tooltip": true},custom_data={"common_signals":{"temp":true}}'

	# Solar panel
	energy: dict = Mem.definitions["solar_panel"]["custom_data"]["energy"]
	content: str = f"""# Produce Energy depending on the power of daylight sensor
execute if predicate {ns}:check_daylight_power run scoreboard players add @s energy.storage {energy["generation"]}
execute if score @s energy.storage > @s energy.max_storage run scoreboard players operation @s energy.storage = @s energy.max_storage
"""
	write_function(f"{ns}:custom_blocks/solar_panel/second", content)
	write_function(f"{ns}:custom_blocks/solar_panel/place_secondary", """
# Fix scale
data modify entity @s transformation.scale[1] set value 1.005f
data modify entity @s transformation.translation[1] set value 0.002f
""")


	# Furnace Generator
	energy: dict = Mem.definitions["furnace_generator"]["custom_data"]["energy"]
	default_gui: str = gui["gui/furnace_generator.png"]
	working_gui: str = gui["gui/furnace_generator_on.png"]
	default_model: str = Mem.definitions["furnace_generator"]["item_model"]
	working_model: str = default_model + "_on"
	content: str = f"""# Update the gui to default
execute store result score #burn_time {ns}.data run data get block ~ ~ ~ lit_time_remaining
execute if score #burn_time {ns}.data matches 0 run item replace block ~ ~ ~ container.0 with {CUSTOM_ITEM_VANILLA}[item_model="{default_gui}",{GUI_DATA}]
execute if score #burn_time {ns}.data matches 0 run data modify entity @s item.components."minecraft:item_model" set value "{default_model}"
execute if score #burn_time {ns}.data matches 1.. run item replace block ~ ~ ~ container.0 with {CUSTOM_ITEM_VANILLA}[item_model="{working_gui}",{GUI_DATA}]
execute if score #burn_time {ns}.data matches 1.. run data modify entity @s item.components."minecraft:item_model" set value "{working_model}"

# Update the gui & produce Energy while working
execute if score #burn_time {ns}.data matches 1.. run scoreboard players add @s energy.storage {energy["generation"]}
execute if score #burn_time {ns}.data matches 1.. run playsound {ns}:furnace_generator block @a[distance=..12] ~ ~ ~ 0.25
execute if score @s energy.storage > @s energy.max_storage run scoreboard players operation @s energy.storage = @s energy.max_storage

# Prevent the furnace from really cooking
data modify block ~ ~ ~ cooking_total_time set value -200s
data modify block ~ ~ ~ cooking_time_spent set value 0s
"""
	write_function(f"{ns}:custom_blocks/furnace_generator/second", content)

	# Electric Smelter & Electric Furnace & Electric Brewing Stand
	for machine in ["electric_smelter", "electric_furnace", "electric_brewing_stand"]:
		energy: dict = Mem.definitions[machine]["custom_data"]["energy"]
		cook: str = "cooking_time_spent" if machine != "electric_brewing_stand" else "BrewTime"
		burn: str = "lit_time_remaining" if machine != "electric_brewing_stand" else "Fuel"
		burn_type: str = "short" if machine != "electric_brewing_stand" else "byte"
		gui_slot: int = 1 if machine != "electric_brewing_stand" else 4
		ingr_slot: int = 0 if machine != "electric_brewing_stand" else 3
		check_cook_limit: str = f"execute if score #cook_time {ns}.data matches 200.. run scoreboard players set #cook_time {ns}.data 199\n" if machine != "electric_brewing_stand" else ""
		faster_cook: str = ""
		if machine == "electric_furnace":
			faster_cook = f"execute if score #cook_time {ns}.data matches 1.. run scoreboard players add #cook_time {ns}.data 1"
		elif machine == "electric_smelter":
			faster_cook = f"execute if score #cook_time {ns}.data matches 1.. run scoreboard players add #cook_time {ns}.data 7"
		elif machine == "electric_brewing_stand":
			faster_cook = f"execute if score #cook_time {ns}.data matches 4.. run scoreboard players remove #cook_time {ns}.data 3"

		all_gui: list[str] = [x for x in gui if machine + "_" in x]
		nb_gui: int = len(all_gui)
		nb_gui_2: int = nb_gui - 2	# nb_gui-2 because we don't count the 0 and last
		machine_gui: list[str] = []
		previous_max: int = 0
		for i, gui_name in enumerate(all_gui):
			if i == 0:
				machine_gui.append(f'execute if score @s energy.storage matches ..0 run item replace block ~ ~ ~ container.{gui_slot} with {CUSTOM_ITEM_VANILLA}[item_model="{gui[gui_name]}",{GUI_DATA}]')
			elif i == (nb_gui - 1):
				machine_gui.append(f'execute if score @s energy.storage matches {previous_max + 1}.. run item replace block ~ ~ ~ container.{gui_slot} with {CUSTOM_ITEM_VANILLA}[item_model="{gui[gui_name]}",{GUI_DATA}]')
			else:
				gui_min: int = previous_max + 1
				previous_max = (i * energy["max_storage"] // nb_gui_2) - 1
				machine_gui.append(f'execute if score @s energy.storage matches {gui_min}..{previous_max} run item replace block ~ ~ ~ container.{gui_slot} with {CUSTOM_ITEM_VANILLA}[item_model="{gui[gui_name]}",{GUI_DATA}]')
		machine_gui_str: str = "\n".join(machine_gui)

		default_model: str = Mem.definitions[machine]["item_model"]
		working_model: str = default_model + "_on"
		content: str = f"""
# Store values for efficient look up
data modify storage {ns}:temp all set from block ~ ~ ~
execute store result score #cook_time {ns}.data run data get storage {ns}:temp all.{cook}
execute store result score #burn_time {ns}.data run data get storage {ns}:temp all.{burn}
execute if score @s energy.storage matches {energy["usage"]}.. if data storage {ns}:temp all.Items[{{Slot:{ingr_slot}b}}] run function {ns}:custom_blocks/{machine}/work

# Update gui depending on energy storage
{machine_gui_str}

# Update block visual depends on cook time, and playsound every second
execute if score #cook_time {ns}.data matches 0 run data modify entity @s[tag={ns}.update_visual] item.components."minecraft:item_model" set value "{default_model}"
tag @s remove {ns}.update_visual
execute if score #cook_time {ns}.data matches 0 run tag @s add {ns}.update_visual
execute if score #cook_time {ns}.data matches 1.. run data modify entity @s item.components."minecraft:item_model" set value "{working_model}"
execute if score #cook_time {ns}.data matches 1.. if score #second {ns}.data matches 0 run playsound {ns}:{machine} block @a[distance=..12] ~ ~ ~ {0.25 if machine != "electric_brewing_stand" else 1.0}
"""
		write_function(f"{ns}:custom_blocks/{machine}/tick", content)
		content: str = f"""
# Change {cook} value and use energy
execute if score #cook_time {ns}.data matches 1.. run scoreboard players remove @s energy.storage {energy["usage"] // 20}
{faster_cook}
{check_cook_limit}execute if score #cook_time {ns}.data matches 1.. store result block ~ ~ ~ {cook} short 1 run scoreboard players get #cook_time {ns}.data

# Change {burn} value
scoreboard players operation #old_burn_time {ns}.data = #burn_time {ns}.data
scoreboard players add #burn_time {ns}.data 21
execute if score #burn_time {ns}.data matches 21.. run scoreboard players set #burn_time {ns}.data 20
execute if score #old_burn_time {ns}.data matches ..200 store result block ~ ~ ~ {burn} {burn_type} 1 run scoreboard players get #burn_time {ns}.data
"""
		write_function(f"{ns}:custom_blocks/{machine}/work", content)

	# Cauldron Generator
	energy: dict = Mem.definitions["cauldron_generator"]["custom_data"]["energy"]
	default_model: str = Mem.definitions["cauldron_generator"]["item_model"]
	working_model: str = default_model + "_on"
	content: str = f"""
# Stop function if no water or full
scoreboard players set #working {ns}.data 1
execute if score #working {ns}.data matches 1 if score @s energy.storage matches {energy["max_storage"]}.. run scoreboard players set #working {ns}.data 0
execute if score #working {ns}.data matches 1 if block ~ ~ ~ cauldron run scoreboard players set #working {ns}.data 0
# execute if score #working {ns}.data matches 1 run data modify entity @s item.components."minecraft:item_model" set value "{working_model}"
# execute if score #working {ns}.data matches 0 run data modify entity @s item.components."minecraft:item_model" set value "{default_model}"
execute if score #working {ns}.data matches 0 run return 0

# Increase timer data and setblock depending on timer data
scoreboard players add @s {ns}.private 1
execute if score @s {ns}.private matches 2.. run setblock ~ ~ ~ water_cauldron[level=2]
execute if score @s {ns}.private matches 90.. run setblock ~ ~ ~ water_cauldron[level=1]
execute if score @s {ns}.private matches 180.. run setblock ~ ~ ~ cauldron
execute if score @s {ns}.private matches 180.. run scoreboard players reset @s {ns}.private

# If the cauldron is full, reset private timer
execute if score @s {ns}.private matches 1.. if block ~ ~ ~ water_cauldron[level=3] run scoreboard players set @s {ns}.private 1

# Generate energy & Playsound
scoreboard players add @s energy.storage {energy["generation"]}
execute if score @s energy.storage matches {energy["max_storage"]}.. run scoreboard players set @s energy.storage {energy["max_storage"]}
playsound {ns}:cauldron_generator block @a[distance=..12] ~ ~ ~ 0.25
"""
	write_function(f"{ns}:custom_blocks/cauldron_generator/second", content)

	# Commands on Electric Brewing Stand placement
	to_add: str = """
# Rotate the entity and set scale
data modify entity @s Rotation[0] set value 180.0f
data modify entity @s transformation.scale[1] set value 1.025f
data modify entity @s transformation.translation[1] set value 0.01f
"""
	write_function(f"{ns}:custom_blocks/electric_brewing_stand/place_secondary", to_add)

	# Pulverizer
	pulverizer(gui)


	return

