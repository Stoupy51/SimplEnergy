
# Imports
from python_datapack.utils.print import *
from python_datapack.utils.io import *
from user.utils.gui import GUI_VANILLA_ITEM

# Setup pulverizer work and visuals
def pulverizer(config: dict, gui: dict[str, int]) -> None:
	database: dict[str, dict] = config['database']
	namespace: str = config['namespace']
	build_datapack: str = config['build_datapack']
	CUSTOM_BLOCKS = f"{build_datapack}/data/{namespace}/function/custom_blocks"
	GUI_DATA = 'hide_tooltip={},custom_data={"common_signals":{"temp":true}}'
	GUI_DATA_TOOLTIP = 'custom_data={"common_signals":{"temp":true}}'
	PULVERIZER_SLOTS = 8
	PULVERIZER_TIME: int = 500

	# Tick function
	energy = database["pulverizer"]["custom_data"]["energy"]
	all_gui = [x for x in gui if "pulverizer_" in x]
	gui_slot = 26
	nb_gui = len(all_gui)
	nb_gui_2 = nb_gui - 2	# nb_gui-2 because we don't count the 0 and last
	machine_gui = []
	previous_max = 0
	for i, gui_name in enumerate(all_gui):
		if i == 0:
			machine_gui.append(f'execute if score @s energy.storage matches ..0 run item replace block ~ ~ ~ container.{gui_slot} with {GUI_VANILLA_ITEM}[custom_model_data={gui[gui_name]},{GUI_DATA}]')
		elif i == (nb_gui - 1):
			machine_gui.append(f'execute if score @s energy.storage matches {previous_max + 1}.. run item replace block ~ ~ ~ container.{gui_slot} with {GUI_VANILLA_ITEM}[custom_model_data={gui[gui_name]},{GUI_DATA}]')
		else:
			gui_min = previous_max + 1
			previous_max = (i * energy["max_storage"] // nb_gui_2) - 1
			machine_gui.append(f'execute if score @s energy.storage matches {gui_min}..{previous_max} run item replace block ~ ~ ~ container.{gui_slot} with {GUI_VANILLA_ITEM}[custom_model_data={gui[gui_name]},{GUI_DATA}]')
	machine_gui = "\n".join(machine_gui)

	default_cmd = database["pulverizer"]["custom_model_data"]
	working_cmd = default_cmd + 1
	content = f"""
# Copy slots to storage
data modify storage {namespace}:temp slots set value [{{}},{','.join(['{"blocked":true}'] * (PULVERIZER_SLOTS - 1))}]
data modify storage {namespace}:temp slots set from entity @s item.components."minecraft:custom_data".{namespace}.pulverizer_slots
data modify storage {namespace}:temp Items set from block ~ ~ ~ Items

# Launch work function if enough power
scoreboard players set #cooking {namespace}.data 0
execute if score @s energy.storage matches {energy["usage"]}.. run function {namespace}:custom_blocks/pulverizer/work

# Update gui depending on energy storage
{machine_gui}

# Update gui for each slot
function {namespace}:custom_blocks/pulverizer/gui_for_each_slot

# Update block visual depends on cook time, and playsound every second
execute if score #cooking {namespace}.data matches 0 run data modify entity @s[tag={namespace}.update_visual] item.components."minecraft:custom_model_data" set value {default_cmd}
tag @s remove {namespace}.update_visual
execute if score #cooking {namespace}.data matches 0 run tag @s add {namespace}.update_visual
execute if score #cooking {namespace}.data matches 1 run data modify entity @s item.components."minecraft:custom_model_data" set value {working_cmd}
execute if score #cooking {namespace}.data matches 1 if score #second {namespace}.data matches 0 run playsound {namespace}:pulverizer block @a[distance=..12] ~ ~ ~ 0.25

# Save slots to entity
data modify entity @s item.components."minecraft:custom_data".{namespace}.pulverizer_slots set from storage {namespace}:temp slots

"""
	write_to_file(f"{CUSTOM_BLOCKS}/pulverizer/tick.mcfunction", content)

	# Gui for each slot
	slots: str = "\n".join(f'function {namespace}:custom_blocks/pulverizer/gui_passive_slot {{"index":{i},"slot":{i+9}}}' for i in range(PULVERIZER_SLOTS))
	write_to_file(f"{CUSTOM_BLOCKS}/pulverizer/gui_for_each_slot.mcfunction", f"""
# For each slot, execute function to update gui
{slots}
""")

	# Set the item gui (blocked if not unlocked, progression otherwise)
	blocked_cmd: int = gui["gui/progress_blocked.png"]
	progressions_cmd: list[int] = [gui[x] for x in gui if "progress_unblocked_" in x]
	write_to_file(f"{CUSTOM_BLOCKS}/pulverizer/gui_passive_slot.mcfunction", f"""
# Get slot and progression, and the item
scoreboard players set #progression {namespace}.data 0
$data modify storage {namespace}:temp slot set from storage {namespace}:temp slots[$(index)]
execute store result score #progression {namespace}.data run data get storage {namespace}:temp slot.progression
$data modify storage {namespace}:temp intruder set from storage {namespace}:temp Items[{{Slot:$(slot)b}}]

# If item is not a GUI, launch function to handle it
$execute unless data storage {namespace}:temp intruder.components."minecraft:custom_data".common_signals.temp run function {namespace}:custom_blocks/pulverizer/handle_item_on_gui {{"index":$(index),"slot":$(slot)}}

# Set item gui (blocked if not unlocked, progression otherwise)
$execute if data storage {namespace}:temp slot.blocked run item replace block ~ ~ ~ container.$(slot) with {GUI_VANILLA_ITEM}[custom_model_data={blocked_cmd},{GUI_DATA_TOOLTIP},item_name='{{"text":"Blocked","italic":false}}',lore=['{{"text":"Place a Slot Unlocker to unlock","color":"gray","italic":false}}']]
$execute unless data storage {namespace}:temp slot.blocked run item replace block ~ ~ ~ container.$(slot) with {GUI_VANILLA_ITEM}[custom_model_data={progressions_cmd[0]},{GUI_DATA}]
""")
	# TODO ^^^^^^^^^^^ progression!
	
	# Handle intruder item on gui
	write_to_file(f"{CUSTOM_BLOCKS}/pulverizer/handle_item_on_gui.mcfunction", f"""
# If slot is locked and it's not a Slot Unlocker, drop the item
scoreboard players set #drop_item {namespace}.data 0
execute unless data storage {namespace}:temp slot.blocked run scoreboard players set #drop_item {namespace}.data 1
execute if score #drop_item {namespace}.data matches 0 unless data storage {namespace}:temp intruder.components."minecraft:custom_data".{namespace}.slot_unlocker run scoreboard players set #drop_item {namespace}.data 1
execute if score #drop_item {namespace}.data matches 1 run summon item ~ ~ ~ {{Item:{{id:"minecraft:stone",count:1b,components:{{"minecraft:custom_data":{{"temp":true}}}}}}}}
execute if score #drop_item {namespace}.data matches 1 run data modify entity @n[type=item,nbt={{Item:{{components:{{"minecraft:custom_data":{{"temp":true}}}}}}}}] Item set from storage {namespace}:temp intruder

# If slot is locked and item didn't drop, unlock the slot, playsound, and drop the item with count decreased by 1
execute if score #drop_item {namespace}.data matches 0 if data storage {namespace}:temp slot.blocked run playsound block.anvil.destroy block @a[distance=..12]
execute if score #drop_item {namespace}.data matches 0 if data storage {namespace}:temp slot.blocked run clear @a *[minecraft:custom_data={{"common_signals":{{"temp":true}}}}]
$execute if score #drop_item {namespace}.data matches 0 if data storage {namespace}:temp slot.blocked run data remove storage {namespace}:temp slots[$(index)].blocked
execute if score #drop_item {namespace}.data matches 0 if data storage {namespace}:temp slot.blocked store result score #count {namespace}.data run data get storage {namespace}:temp intruder.count
execute if score #drop_item {namespace}.data matches 0 if data storage {namespace}:temp slot.blocked run scoreboard players remove #count {namespace}.data 1
execute if score #drop_item {namespace}.data matches 0 if data storage {namespace}:temp slot.blocked if score #count {namespace}.data matches 1.. store result storage {namespace}:temp intruder.count byte 1 run scoreboard players get #count {namespace}.data
execute if score #drop_item {namespace}.data matches 0 if data storage {namespace}:temp slot.blocked if score #count {namespace}.data matches 1.. run summon item ~ ~ ~ {{Item:{{id:"minecraft:stone",count:1b,components:{{"minecraft:custom_data":{{"temp":true}}}}}}}}
execute if score #drop_item {namespace}.data matches 0 if data storage {namespace}:temp slot.blocked if score #count {namespace}.data matches 1.. run data modify entity @n[type=item,nbt={{Item:{{components:{{"minecraft:custom_data":{{"temp":true}}}}}}}}] Item set from storage {namespace}:temp intruder
""")

	return

