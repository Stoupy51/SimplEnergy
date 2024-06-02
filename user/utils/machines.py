
# Imports
from python_datapack.utils.print import *
from python_datapack.utils.io import *
from user.utils.gui import GUI_VANILLA_ITEM

# Setup machines work and visuals
def setup_machines(config: dict, gui: dict[str, int]) -> None:
	database: dict[str, dict] = config['database']
	namespace: str = config['namespace']
	build_datapack: str = config['build_datapack']
	custom_blocks = f"{build_datapack}/data/{namespace}/function/custom_blocks"
	warning(gui)

	# Solar panel
	energy = database["solar_panel"]["custom_data"]["energy"]
	content = f"""# Produce Energy depending on the power of daylight sensor
execute if predicate {namespace}:check_daylight_power run scoreboard players add @s energy.storage {energy["generation"]}
execute if score @s energy.storage > @s energy.max_storage run scoreboard players operation @s energy.storage = @s energy.max_storage
"""
	write_to_file(f"{custom_blocks}/solar_panel/second.mcfunction", content)


	# Furnace Generator
	energy = database["furnace_generator"]["custom_data"]["energy"]
	default_gui = gui["gui/furnace_generator.png"]
	working_gui = gui["gui/furnace_generator_working.png"]
	default_cmd = database["furnace_generator"]["custom_model_data"]
	working_cmd = default_cmd + 1
	content = f"""# Update the gui to default
execute store result score #burn_time {namespace}.data run data get block ~ ~ ~ BurnTime
execute if score #burn_time {namespace}.data matches 0 run item replace block ~ ~ ~ container.0 with {GUI_VANILLA_ITEM}[custom_model_data={default_gui},hide_tooltip={{}},custom_data={{"common_signals":{{"temp":true}}}}]
execute if score #burn_time {namespace}.data matches 0 run data modify entity @s item.components."minecraft:custom_model_data" set value {default_cmd}
execute if score #burn_time {namespace}.data matches 1.. run item replace block ~ ~ ~ container.0 with {GUI_VANILLA_ITEM}[custom_model_data={working_gui},hide_tooltip={{}},custom_data={{"common_signals":{{"temp":true}}}}]
execute if score #burn_time {namespace}.data matches 1.. run data modify entity @s item.components."minecraft:custom_model_data" set value {working_cmd}

# Update the gui & produce Energy while working
execute if score #burn_time {namespace}.data matches 1.. run scoreboard players add @s energy.storage {energy["generation"]}
execute if score #burn_time {namespace}.data matches 1.. run playsound {namespace}:furnace_generator block @a[distance=..12] ~ ~ ~ 0.25
execute if score @s energy.storage > @s energy.max_storage run scoreboard players operation @s energy.storage = @s energy.max_storage

# Prevent the furnace from really cooking
data modify block ~ ~ ~ CookTimeTotal set value -200s
data modify block ~ ~ ~ CookTime set value 0s
"""
	write_to_file(f"{custom_blocks}/furnace_generator/second.mcfunction", content)

	# Electric Smelter & Electric Furnace
	for machine in ["electric_smelter", "electric_furnace"]:
		energy = database[machine]["custom_data"]["energy"]
		nb_gui = sum(machine + "_" in x for x in gui) - 2	# -2 because we don't count the 0 and 5
		gui_0 = gui[f"gui/{machine}_0.png"]
		gui_1, min_1, max_1 =	gui[f"gui/{machine}_1.png"],	1, 			1 * energy["max_storage"] // nb_gui - 1
		gui_2, min_2, max_2 =	gui[f"gui/{machine}_2.png"],	max_1 + 1,	2 * energy["max_storage"] // nb_gui - 1
		gui_3, min_3, max_3 =	gui[f"gui/{machine}_3.png"],	max_2 + 1,	3 * energy["max_storage"] // nb_gui - 1
		gui_4, min_4, max_4 =	gui[f"gui/{machine}_4.png"],	max_3 + 1,	4 * energy["max_storage"] // nb_gui - 1
		gui_5, min_5 =			gui[f"gui/{machine}_5.png"],	max_4 + 1
		default_cmd = database[machine]["custom_model_data"]
		working_cmd = default_cmd + 1
		content = f"""
# Store values for efficient look up
data modify storage {namespace}:temp all set from block ~ ~ ~
execute store result score #cook_time {namespace}.data run data get storage {namespace}:temp all.CookTime
execute store result score #burn_time {namespace}.data run data get storage {namespace}:temp all.BurnTime
execute if score @s energy.storage matches {energy["usage"]}.. if data storage {namespace}:temp all.Items[{{Slot:0b}}] run function {namespace}:custom_blocks/{machine}/work

# Update gui depending on energy storage
execute if score @s energy.storage matches ..0 run item replace block ~ ~ ~ container.1 with {GUI_VANILLA_ITEM}[custom_model_data={gui_0},hide_tooltip={{}},custom_data={{"common_signals":{{"temp":true}}}}]
execute if score @s energy.storage matches {min_1}..{max_1} run item replace block ~ ~ ~ container.1 with {GUI_VANILLA_ITEM}[custom_model_data={gui_1},hide_tooltip={{}},custom_data={{"common_signals":{{"temp":true}}}}]
execute if score @s energy.storage matches {min_2}..{max_2} run item replace block ~ ~ ~ container.1 with {GUI_VANILLA_ITEM}[custom_model_data={gui_2},hide_tooltip={{}},custom_data={{"common_signals":{{"temp":true}}}}]
execute if score @s energy.storage matches {min_3}..{max_3} run item replace block ~ ~ ~ container.1 with {GUI_VANILLA_ITEM}[custom_model_data={gui_3},hide_tooltip={{}},custom_data={{"common_signals":{{"temp":true}}}}]
execute if score @s energy.storage matches {min_4}..{max_4} run item replace block ~ ~ ~ container.1 with {GUI_VANILLA_ITEM}[custom_model_data={gui_4},hide_tooltip={{}},custom_data={{"common_signals":{{"temp":true}}}}]
execute if score @s energy.storage matches {min_5}.. run item replace block ~ ~ ~ container.1 with {GUI_VANILLA_ITEM}[custom_model_data={gui_5},hide_tooltip={{}},custom_data={{"common_signals":{{"temp":true}}}}]

# Update block visual depends on cook time, and playsound every second
execute if score #cook_time {namespace}.data matches 0 run data modify entity @s[tag={namespace}.update_visual] item.components."minecraft:custom_model_data" set value {default_cmd}
tag @s remove {namespace}.update_visual
execute if score #cook_time {namespace}.data matches 0 run tag @s add {namespace}.update_visual
execute if score #cook_time {namespace}.data matches 1.. run data modify entity @s item.components."minecraft:custom_model_data" set value {working_cmd}
execute if score #cook_time {namespace}.data matches 1.. if score #second {namespace}.data matches 0 run playsound {namespace}:{machine} block @a[distance=..12] ~ ~ ~ 0.25
"""
		write_to_file(f"{custom_blocks}/{machine}/tick.mcfunction", content)
		content = f"""
# Change CookTime value and use energy
execute if score #cook_time {namespace}.data matches 1.. run scoreboard players remove @s energy.storage {energy["usage"] // 20}
execute if score #cook_time {namespace}.data matches 1.. run scoreboard players add #cook_time {namespace}.data {7 if machine == "electric_smelter" else 1}
execute if score #cook_time {namespace}.data matches 200.. run scoreboard players set #cook_time {namespace}.data 199
execute if score #cook_time {namespace}.data matches 1.. store result block ~ ~ ~ CookTime short 1 run scoreboard players get #cook_time {namespace}.data

# Change BurnTime value
scoreboard players operation #old_burn_time {namespace}.data = #burn_time {namespace}.data
scoreboard players add #burn_time {namespace}.data 21
execute if score #burn_time {namespace}.data matches 221.. run scoreboard players set #burn_time {namespace}.data 220
execute if score #old_burn_time {namespace}.data matches ..200 store result block ~ ~ ~ BurnTime short 1 run scoreboard players get #burn_time {namespace}.data
"""
		write_to_file(f"{custom_blocks}/{machine}/work.mcfunction", content)

	# Electric Brewing Stand

	# Cauldron Generator

	return

