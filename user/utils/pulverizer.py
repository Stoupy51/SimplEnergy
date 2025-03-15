
# Imports
from python_datapack.utils.io import *
from user.utils.gui import GUI_VANILLA_ITEM

# Setup pulverizer work and visuals
def pulverizer(config: dict, gui: dict[str, int]) -> None:
	database: dict[str, dict] = config['database']
	namespace: str = config['namespace']
	build_datapack: str = config['build_datapack']
	CUSTOM_BLOCKS = f"{build_datapack}/data/{namespace}/function/custom_blocks"
	GUI_DATA = 'tooltip_display={"hide_tooltip": true},custom_data={"common_signals":{"temp":true}}'
	GUI_DATA_TOOLTIP = 'custom_data={"common_signals":{"temp":true}}'
	PULVERIZER_SLOTS = 8
	PULVERIZER_TIME: int = 200
	energy = database["pulverizer"]["custom_data"]["energy"]


	## Passive parts
	# Tick function
	all_gui = [x for x in gui if "pulverizer_" in x]
	gui_slot = 26
	nb_gui = len(all_gui)
	nb_gui_2 = nb_gui - 2	# nb_gui-2 because we don't count the 0 and last
	machine_gui = []
	previous_max = 0
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

	default_model = database["pulverizer"]["item_model"]
	working_model = default_model + "_on"
	content = f"""
# Copy slots to storage
data modify storage {namespace}:temp slots set value [{{}},{','.join(['{"blocked":true}'] * (PULVERIZER_SLOTS - 1))}]
data modify storage {namespace}:temp slots set from entity @s item.components."minecraft:custom_data".{namespace}.pulverizer_slots
data modify storage {namespace}:temp Items set from block ~ ~ ~ Items

# Launch work function if enough power
scoreboard players set #working {namespace}.data 0
execute if score @s energy.storage matches {energy["usage"]}.. run function {namespace}:custom_blocks/pulverizer/work

# Update gui depending on energy storage
{machine_gui}

# Update gui for each slot
function {namespace}:custom_blocks/pulverizer/gui_for_each_slot

# Update block visual depends on cook time, and playsound every second
execute if score #working {namespace}.data matches 0 run data modify entity @s item.components."minecraft:item_model" set value "{default_model}"
execute if score #working {namespace}.data matches 1.. run data modify entity @s item.components."minecraft:item_model" set value "{working_model}"
execute if score #working {namespace}.data matches 1.. if score #second {namespace}.data matches 0 run playsound {namespace}:pulverizer block @a[distance=..12] ~ ~ ~ 0.25

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
	blocked_model: str = gui["gui/progress_blocked.png"]
	progressions_cmd: list[str] = [x for x in gui if "progress_unblocked_" in x]
	write_to_file(f"{CUSTOM_BLOCKS}/pulverizer/gui_passive_slot.mcfunction", f"""
# Get slot and progression, and the item
scoreboard players set #progression {namespace}.data 0
$data modify storage {namespace}:temp slot set from storage {namespace}:temp slots[$(index)]
execute store result score #progression {namespace}.data run data get storage {namespace}:temp slot.progression
$data modify storage {namespace}:temp intruder set from storage {namespace}:temp Items[{{Slot:$(slot)b}}]

# If item is not a GUI, launch function to handle it
$execute unless data storage {namespace}:temp intruder.components."minecraft:custom_data".common_signals.temp run function {namespace}:custom_blocks/pulverizer/handle_item_on_gui {{"index":$(index),"slot":$(slot)}}

# Set item gui (blocked if not unlocked, progression otherwise)
$execute if data storage {namespace}:temp slot.blocked run item replace block ~ ~ ~ container.$(slot) with {GUI_VANILLA_ITEM}[item_model="{blocked_model}",{GUI_DATA_TOOLTIP},item_name='{{"text":"Blocked","italic":false}}',lore=['{{"text":"Place a Slot Unlocker to unlock","color":"gray","italic":false}}']]
$execute unless data storage {namespace}:temp slot.blocked run function {namespace}:custom_blocks/pulverizer/gui_progression {{"index":$(index),"slot":$(slot)}}
""")
	
	# Gui progression function
	progressions_gui: list[str] = []
	nb_gui = len(progressions_cmd)
	nb_gui_2 = nb_gui - 2	# nb_gui-2 because we don't count the 0 and last
	previous_max: int = 0
	for i, progression in enumerate(progressions_cmd):
		if i == 0:
			progressions_gui.append(f'$execute if score #progression {namespace}.data matches ..0 run item replace block ~ ~ ~ container.$(slot) with {GUI_VANILLA_ITEM}[item_model="{gui[progression]}",{GUI_DATA}]')
		elif i == (nb_gui - 1):
			progressions_gui.append(f'$execute if score #progression {namespace}.data matches {previous_max + 1}.. run item replace block ~ ~ ~ container.$(slot) with {GUI_VANILLA_ITEM}[item_model="{gui[progression]}",{GUI_DATA}]')
		else:
			gui_min = previous_max + 1
			previous_max = (i * PULVERIZER_TIME // nb_gui_2) - 1
			progressions_gui.append(f'$execute if score #progression {namespace}.data matches {gui_min}..{previous_max} run item replace block ~ ~ ~ container.$(slot) with {GUI_VANILLA_ITEM}[item_model="{gui[progression]}",{GUI_DATA}]')
	write_to_file(f"{CUSTOM_BLOCKS}/pulverizer/gui_progression.mcfunction", "\n".join(progressions_gui))


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


	## Work parts
	# Work function
	for_each_slots: str = "\n".join(f'execute unless data storage {namespace}:temp slots[{i}].blocked run function {namespace}:custom_blocks/pulverizer/gui_active_slot {{"index":{i},"slot":{i+9},"result":{i+9*2}}}' for i in range(PULVERIZER_SLOTS))
	write_to_file(f"{CUSTOM_BLOCKS}/pulverizer/work.mcfunction", f"""
# Monitor if any slot is working
{for_each_slots}

# Consume energy if any slot is working
execute if score #working {namespace}.data matches 1.. run scoreboard players remove @s energy.storage {energy["usage"] // 20}
""")
	
	# Reset progress function
	write_to_file(f"{CUSTOM_BLOCKS}/pulverizer/reset_progress.mcfunction", f"""
scoreboard players set #progression {namespace}.data 0
$data modify storage {namespace}:temp slots[$(index)].progression set value 0
$function {namespace}:custom_blocks/pulverizer/gui_progression {{"index":$(index),"slot":$(slot)}}
return fail
""")
	
	# Gui for each active slot
	write_to_file(f"{CUSTOM_BLOCKS}/pulverizer/gui_active_slot.mcfunction", f"""
# Get progression
scoreboard players set #progression {namespace}.data 0
$execute store result score #progression {namespace}.data run data get storage {namespace}:temp slots[$(index)].progression

# Isolate ingredient and try to get result
scoreboard players set #found {namespace}.data 0
data modify storage {namespace}:main pulverizer.input set value {{}}
data modify storage {namespace}:main pulverizer.output set value {{}}
$data modify storage {namespace}:main pulverizer.input set from storage {namespace}:temp Items[{{Slot:$(index)b}}]
$execute unless data storage {namespace}:main pulverizer.input run return run function {namespace}:custom_blocks/pulverizer/reset_progress {{"index":$(index),"slot":$(slot)}}
execute summon item_display run function {namespace}:custom_blocks/pulverizer/get_pulverizer_recipe

# If no recipe found, stop
$execute if score #found {namespace}.data matches 0 run return run function {namespace}:custom_blocks/pulverizer/reset_progress {{"index":$(index),"slot":$(slot)}}

# Else, if output do not match current output slot, stop
scoreboard players set #output_occupied {namespace}.data 0
$execute if data storage {namespace}:temp Items[{{Slot:$(result)b}}] run scoreboard players set #output_occupied {namespace}.data 1
execute if score #output_occupied {namespace}.data matches 1 run scoreboard players set #is_not_same_output {namespace}.data 0
$execute if score #output_occupied {namespace}.data matches 1 run data modify storage {namespace}:temp copy set from storage {namespace}:temp Items[{{Slot:$(result)b}}]
execute if score #output_occupied {namespace}.data matches 1 store success score #is_not_same_output {namespace}.data run data modify storage {namespace}:temp copy.id set from storage {namespace}:main pulverizer.output.id
execute if score #output_occupied {namespace}.data matches 1 if score #is_not_same_output {namespace}.data matches 0 store success score #is_not_same_output {namespace}.data run data modify storage {namespace}:temp copy.components set from storage {namespace}:main pulverizer.output.components
$execute if score #output_occupied {namespace}.data matches 1 if score #is_not_same_output {namespace}.data matches 1 run return run function simplenergy:custom_blocks/pulverizer/reset_progress {{"index":$(index),"slot":$(slot)}}

# Progress the slot
scoreboard players add #progression {namespace}.data 1
$execute if score #progression {namespace}.data matches ..{PULVERIZER_TIME - 1} store result storage {namespace}:temp slots[$(index)].progression int 1 run scoreboard players get #progression {namespace}.data
scoreboard players add #working {namespace}.data 1

# Calculate the output count
execute store result score #count {namespace}.data run data get storage {namespace}:temp copy.count
execute store result score #to_add {namespace}.data run data get storage {namespace}:main pulverizer.output.count
scoreboard players operation #count {namespace}.data += #to_add {namespace}.data
execute if score #output_occupied {namespace}.data matches 1 summon item_display run function {namespace}:custom_blocks/pulverizer/entity_get_max_stack_size
$execute if score #output_occupied {namespace}.data matches 1 if score #count {namespace}.data > #max_stack_size {namespace}.data run return run function simplenergy:custom_blocks/pulverizer/reset_progress {{"index":$(index),"slot":$(slot)}}

# Add the item to the result slot if progression is done
execute if score #progression {namespace}.data matches ..{PULVERIZER_TIME - 1} run return 1
$execute if score #output_occupied {namespace}.data matches 1 store result block ~ ~ ~ Items[{{Slot:$(result)b}}].count int 1 run scoreboard players get #count {namespace}.data
$execute if score #output_occupied {namespace}.data matches 0 run data modify storage {namespace}:main pulverizer.output.Slot set value $(result)b
execute if score #output_occupied {namespace}.data matches 0 run data modify block ~ ~ ~ Items append from storage {namespace}:main pulverizer.output

# Reset progression and remove 1 count to ingredient
$function simplenergy:custom_blocks/pulverizer/reset_progress {{"index":$(index),"slot":$(slot)}}
execute store result score #count {namespace}.data run data get storage {namespace}:main pulverizer.input.count
scoreboard players remove #count {namespace}.data 1
$execute if score #count {namespace}.data matches 1.. store result block ~ ~ ~ Items[{{Slot:$(index)b}}].count int 1 run scoreboard players get #count {namespace}.data
$execute if score #count {namespace}.data matches 0 run data remove block ~ ~ ~ Items[{{Slot:$(index)b}}]
""")
	
	# Get pulverizer recipe function
	write_to_file(f"{CUSTOM_BLOCKS}/pulverizer/get_pulverizer_recipe.mcfunction", f"""
# Get the recipe
function #{namespace}:calls/pulverizer_recipes

# Place in storage the given output (if any)
execute if score #found {namespace}.data matches 1 run data modify storage {namespace}:main pulverizer.output set from entity @s item

# Kill temporary entity
kill @s
""")
	
	# Get max stack size function
	content: str = ""
	numbers = [64, 16, 1, 99]
	numbers += [i for i in range(1, 100) if i not in numbers]
	for i in numbers:
		content += f"execute if items entity @s contents *[minecraft:max_stack_size={i}] run return {i}\n"
	write_to_file(f"{CUSTOM_BLOCKS}/pulverizer/get_max_stack_size.mcfunction", f"""
# Copy item
data modify entity @s item set from storage {namespace}:temp copy

# Get max stack size
{content}
""")
	write_to_file(f"{CUSTOM_BLOCKS}/pulverizer/entity_get_max_stack_size.mcfunction", f"""
# Get max stack size and kill
execute store result score #max_stack_size {namespace}.data run function {namespace}:custom_blocks/pulverizer/get_max_stack_size
kill @s
""")

	# Keep track of unlocked slots when destroying and placing
	write_to_file(f"{CUSTOM_BLOCKS}/pulverizer/destroy.mcfunction", f"""# Copy slots to storage
data remove storage {namespace}:temp slots
data modify storage {namespace}:temp slots set from entity @s item.components."minecraft:custom_data".{namespace}.pulverizer_slots
\n""", prepend = True)
	write_to_file(f"{CUSTOM_BLOCKS}/pulverizer/replace_item.mcfunction", f"""
# Save slots to the item components
execute if data storage {namespace}:temp slots run data modify entity @s Item.components."minecraft:custom_data".{namespace}.pulverizer_slots set from storage {namespace}:temp slots
execute if data storage {namespace}:temp slots run data modify entity @s Item.components."minecraft:lore" prepend value '{{"text":"Unlocked slots saved.","color":"dark_gray","italic":false}}'
""")
	write_to_file(f"{CUSTOM_BLOCKS}/pulverizer/place_secondary.mcfunction", f"""
# Copy slots to the item components
data modify entity @s item.components."minecraft:custom_data".{namespace}.pulverizer_slots set from entity @p[tag={namespace}.placer] SelectedItem.components."minecraft:custom_data".{namespace}.pulverizer_slots
""")


	# ItemIO compatibility
	base: str = 'data modify entity @s item.components."minecraft:custom_data".itemio.ioconfig'
	content: str = f"""
# ItemIO compatibility
tag @s add itemio.container
tag @s add itemio.container.hopper
{base} set value []
"""
	for i in range(PULVERIZER_SLOTS):
		content += f'{base} append value {{"Slot":{i},"mode":"input","allowed_side":{{"north":true,"south":true,"east":true,"west":true,"top":true}}}}\n'
	for i in range(PULVERIZER_SLOTS):
		content += f'{base} append value {{"Slot":{i+2*9},"mode":"output","allowed_side":{{"bottom":true}}}}\n'
	content += "function #itemio:calls/container/init\n"
	write_to_file(f"{CUSTOM_BLOCKS}/pulverizer/place_secondary.mcfunction", content)
	write_to_file(f"{CUSTOM_BLOCKS}/pulverizer/destroy.mcfunction", "# ItemIO compatibility\nfunction #itemio:calls/container/destroy\n\n", prepend = True)

	return

