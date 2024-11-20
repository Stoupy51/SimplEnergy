
# Imports
from python_datapack.utils.print import *
from python_datapack.utils.io import *
from user.utils.gui import GUI_VANILLA_ITEM
from user.utils.pulverizer import pulverizer

# Setup machines work and visuals
def setup_machines(config: dict, gui: dict[str, str]) -> None:
	database: dict[str, dict] = config['database']
	namespace: str = config['namespace']
	build_datapack: str = config['build_datapack']
	CUSTOM_BLOCKS = f"{build_datapack}/data/{namespace}/function/custom_blocks"
	GUI_DATA = 'hide_tooltip={},custom_data={"common_signals":{"temp":true}}'

	# Solar panel
	energy = database["solar_panel"]["custom_data"]["energy"]
	content = f"""# Produce Energy depending on the power of daylight sensor
execute if predicate {namespace}:check_daylight_power run scoreboard players add @s energy.storage {energy["generation"]}
execute if score @s energy.storage > @s energy.max_storage run scoreboard players operation @s energy.storage = @s energy.max_storage
"""
	write_to_file(f"{CUSTOM_BLOCKS}/solar_panel/second.mcfunction", content)


	# Furnace Generator
	energy = database["furnace_generator"]["custom_data"]["energy"]
	default_gui = gui["gui/furnace_generator.png"]
	working_gui = gui["gui/furnace_generator_on.png"]
	default_model = database["furnace_generator"]["item_model"]
	working_model = default_model + "_on"
	content = f"""# Update the gui to default
execute store result score #burn_time {namespace}.data run data get block ~ ~ ~ BurnTime
execute if score #burn_time {namespace}.data matches 0 run item replace block ~ ~ ~ container.0 with {GUI_VANILLA_ITEM}[item_model="{default_gui}",{GUI_DATA}]
execute if score #burn_time {namespace}.data matches 0 run data modify entity @s item.components."minecraft:item_model" set value "{default_model}"
execute if score #burn_time {namespace}.data matches 1.. run item replace block ~ ~ ~ container.0 with {GUI_VANILLA_ITEM}[item_model="{working_gui}",{GUI_DATA}]
execute if score #burn_time {namespace}.data matches 1.. run data modify entity @s item.components."minecraft:item_model" set value "{working_model}"

# Update the gui & produce Energy while working
execute if score #burn_time {namespace}.data matches 1.. run scoreboard players add @s energy.storage {energy["generation"]}
execute if score #burn_time {namespace}.data matches 1.. run playsound {namespace}:furnace_generator block @a[distance=..12] ~ ~ ~ 0.25
execute if score @s energy.storage > @s energy.max_storage run scoreboard players operation @s energy.storage = @s energy.max_storage

# Prevent the furnace from really cooking
data modify block ~ ~ ~ CookTimeTotal set value -200s
data modify block ~ ~ ~ CookTime set value 0s
"""
	write_to_file(f"{CUSTOM_BLOCKS}/furnace_generator/second.mcfunction", content)

	# Electric Smelter & Electric Furnace & Electric Brewing Stand
	for machine in ["electric_smelter", "electric_furnace", "electric_brewing_stand"]:
		energy = database[machine]["custom_data"]["energy"]
		cook = "CookTime" if machine != "electric_brewing_stand" else "BrewTime"
		burn = "BurnTime" if machine != "electric_brewing_stand" else "Fuel"
		burn_type = "short" if machine != "electric_brewing_stand" else "byte"
		gui_slot = 1 if machine != "electric_brewing_stand" else 4
		ingr_slot = 0 if machine != "electric_brewing_stand" else 3
		check_cook_limit = f"execute if score #cook_time {namespace}.data matches 200.. run scoreboard players set #cook_time {namespace}.data 199\n" if machine != "electric_brewing_stand" else ""
		if machine == "electric_furnace":
			faster_cook = f"execute if score #cook_time {namespace}.data matches 1.. run scoreboard players add #cook_time {namespace}.data 1"
		elif machine == "electric_smelter":
			faster_cook = f"execute if score #cook_time {namespace}.data matches 1.. run scoreboard players add #cook_time {namespace}.data 7"
		elif machine == "electric_brewing_stand":
			faster_cook = f"execute if score #cook_time {namespace}.data matches 4.. run scoreboard players remove #cook_time {namespace}.data 3"

		all_gui: list[str] = [x for x in gui if machine + "_" in x]
		nb_gui: int = len(all_gui)
		nb_gui_2: int = nb_gui - 2	# nb_gui-2 because we don't count the 0 and last
		machine_gui: list[str] = []
		previous_max: int = 0
		for i, gui_name in enumerate(all_gui):
			if i == 0:
				machine_gui.append(f'execute if score @s energy.storage matches ..0 run item replace block ~ ~ ~ container.{gui_slot} with {GUI_VANILLA_ITEM}[item_model="{gui[gui_name]}",{GUI_DATA}]')
			elif i == (nb_gui - 1):
				machine_gui.append(f'execute if score @s energy.storage matches {previous_max + 1}.. run item replace block ~ ~ ~ container.{gui_slot} with {GUI_VANILLA_ITEM}[item_model="{gui[gui_name]}",{GUI_DATA}]')
			else:
				gui_min = previous_max + 1
				previous_max = (i * energy["max_storage"] // nb_gui_2) - 1
				machine_gui.append(f'execute if score @s energy.storage matches {gui_min}..{previous_max} run item replace block ~ ~ ~ container.{gui_slot} with {GUI_VANILLA_ITEM}[item_model="{gui[gui_name]}",{GUI_DATA}]')
		machine_gui = "\n".join(machine_gui)

		default_model = database[machine]["item_model"]
		working_model = default_model + "_on"
		content = f"""
# Store values for efficient look up
data modify storage {namespace}:temp all set from block ~ ~ ~
execute store result score #cook_time {namespace}.data run data get storage {namespace}:temp all.{cook}
execute store result score #burn_time {namespace}.data run data get storage {namespace}:temp all.{burn}
execute if score @s energy.storage matches {energy["usage"]}.. if data storage {namespace}:temp all.Items[{{Slot:{ingr_slot}b}}] run function {namespace}:custom_blocks/{machine}/work

# Update gui depending on energy storage
{machine_gui}

# Update block visual depends on cook time, and playsound every second
execute if score #cook_time {namespace}.data matches 0 run data modify entity @s[tag={namespace}.update_visual] item.components."minecraft:item_model" set value "{default_model}"
tag @s remove {namespace}.update_visual
execute if score #cook_time {namespace}.data matches 0 run tag @s add {namespace}.update_visual
execute if score #cook_time {namespace}.data matches 1.. run data modify entity @s item.components."minecraft:item_model" set value "{working_model}"
execute if score #cook_time {namespace}.data matches 1.. if score #second {namespace}.data matches 0 run playsound {namespace}:{machine} block @a[distance=..12] ~ ~ ~ {0.25 if machine != "electric_brewing_stand" else 1.0}
"""
		write_to_file(f"{CUSTOM_BLOCKS}/{machine}/tick.mcfunction", content)
		content = f"""
# Change {cook} value and use energy
execute if score #cook_time {namespace}.data matches 1.. run scoreboard players remove @s energy.storage {energy["usage"] // 20}
{faster_cook}
{check_cook_limit}execute if score #cook_time {namespace}.data matches 1.. store result block ~ ~ ~ {cook} short 1 run scoreboard players get #cook_time {namespace}.data

# Change {burn} value
scoreboard players operation #old_burn_time {namespace}.data = #burn_time {namespace}.data
scoreboard players add #burn_time {namespace}.data 21
execute if score #burn_time {namespace}.data matches 21.. run scoreboard players set #burn_time {namespace}.data 20
execute if score #old_burn_time {namespace}.data matches ..200 store result block ~ ~ ~ {burn} {burn_type} 1 run scoreboard players get #burn_time {namespace}.data
"""
		write_to_file(f"{CUSTOM_BLOCKS}/{machine}/work.mcfunction", content)

	# Cauldron Generator
	energy = database["cauldron_generator"]["custom_data"]["energy"]
	default_model = database["cauldron_generator"]["item_model"]
	working_model = default_model + "_on"
	content = f"""
# Stop function if no water or full
scoreboard players set #working {namespace}.data 1
execute if score #working {namespace}.data matches 1 if score @s energy.storage matches {energy["max_storage"]}.. run scoreboard players set #working {namespace}.data 0
execute if score #working {namespace}.data matches 1 if block ~ ~ ~ cauldron run scoreboard players set #working {namespace}.data 0
# execute if score #working {namespace}.data matches 1 run data modify entity @s item.components."minecraft:item_model" set value "{working_model}"
# execute if score #working {namespace}.data matches 0 run data modify entity @s item.components."minecraft:item_model" set value "{default_model}"
execute if score #working {namespace}.data matches 0 run return 0

# Increase timer data and setblock depending on timer data
scoreboard players add @s {namespace}.private 1
execute if score @s {namespace}.private matches 2.. run setblock ~ ~ ~ water_cauldron[level=2]
execute if score @s {namespace}.private matches 90.. run setblock ~ ~ ~ water_cauldron[level=1]
execute if score @s {namespace}.private matches 180.. run setblock ~ ~ ~ cauldron
execute if score @s {namespace}.private matches 180.. run scoreboard players reset @s {namespace}.private

# If the cauldron is full, reset private timer
execute if score @s {namespace}.private matches 1.. if block ~ ~ ~ water_cauldron[level=3] run scoreboard players set @s {namespace}.private 1

# Generate energy & Playsound
scoreboard players add @s energy.storage {energy["generation"]}
execute if score @s energy.storage matches {energy["max_storage"]}.. run scoreboard players set @s energy.storage {energy["max_storage"]}
playsound {namespace}:cauldron_generator block @a[distance=..12] ~ ~ ~ 0.25
"""
	write_to_file(f"{CUSTOM_BLOCKS}/cauldron_generator/second.mcfunction", content)

	# Commands on Electric Brewing Stand placement
	to_add: str = """
# Rotate the entity and set scale
data modify entity @s Rotation[0] set value 180.0f
data modify entity @s transformation.scale[1] set value 1.025f
data modify entity @s transformation.translation[1] set value 0.01f
"""
	write_to_file(f"{CUSTOM_BLOCKS}/electric_brewing_stand/place_secondary.mcfunction", to_add)

	# Pulverizer
	pulverizer(config, gui)


	return

