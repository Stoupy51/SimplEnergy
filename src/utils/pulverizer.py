
# ruff: noqa: E501
# Imports
from stewbeet import COMMON_SIGNAL, COMMON_SIGNAL_HIDDEN, CUSTOM_ITEM_VANILLA, Block, BlockFunctions, JsonDict, McFunction, Mem, persistent_item_display, write_function, write_load_file


# Setup pulverizer work and visuals
def pulverizer(gui: dict[str, str]) -> None:
	ns: str = Mem.ctx.project_id
	PULVERIZER_SLOTS: int = 8
	PULVERIZER_TIME: int = 200
	pulverizer_obj = Block.from_id("pulverizer")
	energy: JsonDict = pulverizer_obj.components["custom_data"]["energy"]


	## Passive parts
	# Tick function
	all_gui: list[str] = [x for x in gui if "pulverizer_" in x]
	gui_slot: int = 26
	nb_gui: int = len(all_gui)
	nb_gui_2: int = nb_gui - 2	# nb_gui-2 because we don't count the 0 and last
	machine_gui: list[str] = []
	previous_max: int = 0
	for i, gui_name in enumerate(all_gui):
		if i == 0:
			machine_gui.append(f"execute if score @s energy.storage matches ..0 run item replace block ~ ~ ~ container.{gui_slot} with {CUSTOM_ITEM_VANILLA}[item_model=\"{gui[gui_name]}\",{COMMON_SIGNAL_HIDDEN}]")
		elif i == (nb_gui - 1):
			machine_gui.append(f"execute if score @s energy.storage matches {previous_max + 1}.. run item replace block ~ ~ ~ container.{gui_slot} with {CUSTOM_ITEM_VANILLA}[item_model=\"{gui[gui_name]}\",{COMMON_SIGNAL_HIDDEN}]")
		else:
			gui_min: int = previous_max + 1
			previous_max = (i * energy["max_storage"] // nb_gui_2) - 1
			machine_gui.append(f"execute if score @s energy.storage matches {gui_min}..{previous_max} run item replace block ~ ~ ~ container.{gui_slot} with {CUSTOM_ITEM_VANILLA}[item_model=\"{gui[gui_name]}\",{COMMON_SIGNAL_HIDDEN}]")
	machine_gui_str: str = "\n".join(machine_gui)

	default_model: str = pulverizer_obj.item_model
	funcs: BlockFunctions = pulverizer_obj.functions
	working_model: str = default_model + "_on"
	not_gui: str = '*[!custom_data~{"common_signals":{"temp":true}}]'
	content: McFunction = f"""
# Slots are unlocked_<index> tags and progress_<index> scores, read from the NBT the item gave on the first tick
execute unless entity @s[tag={ns}.pulverizer_unlocked_0] run function {funcs["load_slots"]}
data remove storage {ns}:temp Items

# Launch work function if enough power
scoreboard players set #working {ns}.data 0
execute if score @s energy.storage >= @s {ns}.energy_rate run function {funcs["work"]}

# Update gui for each slot
function {funcs["gui_for_each_slot"]}

# Update gui depending on energy storage, index 0 being always unlocked so that an item put there is dropped
execute if items block ~ ~ ~ container.{gui_slot} {not_gui} run function {funcs["handle_item_on_gui"]} {{"index":0,"slot":{gui_slot}}}
{machine_gui_str}

# Update block visual depends on cook time, and playsound every second
execute if score #working {ns}.data matches 0 unless items entity @s contents *[minecraft:item_model="{default_model}"] run data modify entity @s item.components."minecraft:item_model" set value "{default_model}"
execute if score #working {ns}.data matches 1.. unless items entity @s contents *[minecraft:item_model="{working_model}"] run data modify entity @s item.components."minecraft:item_model" set value "{working_model}"
execute if score #working {ns}.data matches 1.. if score #second {ns}.data matches 0 run playsound {ns}:pulverizer block @a[distance=..12] ~ ~ ~ 0.25
"""
	write_function(funcs.tick, content)
	write_load_file("\n".join(f"scoreboard objectives add {ns}.pulverizer_progress_{i} dummy" for i in range(PULVERIZER_SLOTS)))
	write_function(funcs["load_slots"], f"""
data modify storage {ns}:temp slots set value [{{}},{','.join(['{"blocked":true}'] * (PULVERIZER_SLOTS - 1))}]
data modify storage {ns}:temp slots set from entity @s item.components."minecraft:custom_data".{ns}.pulverizer_slots
""" + "\n".join(f"execute unless data storage {ns}:temp slots[{i}].blocked run tag @s add {ns}.pulverizer_unlocked_{i}" for i in range(PULVERIZER_SLOTS))
	+ "\n" + "\n".join(f"execute store result score @s {ns}.pulverizer_progress_{i} run data get storage {ns}:temp slots[{i}].progression" for i in range(PULVERIZER_SLOTS)))

	# Gui for each slot
	slots: str = "\n".join(f"function {funcs["gui_passive_slot"]} {{\"index\":{i},\"slot\":{i+9}}}" for i in range(PULVERIZER_SLOTS))
	write_function(funcs["gui_for_each_slot"], f"""
# For each slot, execute function to update gui
{slots}
""")

	# Set the item gui (blocked if not unlocked, progression otherwise)
	blocked_model: str = gui["gui/progress_blocked.png"]
	progressions_cmd: list[str] = [x for x in gui if "progress_unblocked_" in x]
	write_function(funcs["gui_passive_slot"], f"""
$scoreboard players operation #progression {ns}.data = @s {ns}.pulverizer_progress_$(index)
$execute if items block ~ ~ ~ container.$(slot) {not_gui} run function {funcs["handle_item_on_gui"]} {{"index":$(index),"slot":$(slot)}}

# Set item gui (blocked if not unlocked, progression otherwise)
$execute unless entity @s[tag={ns}.pulverizer_unlocked_$(index)] run item replace block ~ ~ ~ container.$(slot) with {CUSTOM_ITEM_VANILLA}[item_model="{blocked_model}",{COMMON_SIGNAL},item_name={{"text":"Blocked","italic":false}},lore=[{{"text":"Place a Slot Unlocker to unlock","color":"gray","italic":false}}]]
$execute if entity @s[tag={ns}.pulverizer_unlocked_$(index)] run function {funcs["gui_progression"]} {{"index":$(index),"slot":$(slot)}}
""")

	# Gui progression function
	progressions_gui: list[str] = []
	nb_gui = len(progressions_cmd)
	nb_gui_2 = nb_gui - 2	# nb_gui-2 because we don't count the 0 and last
	previous_max: int = 0
	for i, progression in enumerate(progressions_cmd):
		if i == 0:
			progressions_gui.append(f"$execute if score #progression {ns}.data matches ..0 run item replace block ~ ~ ~ container.$(slot) with {CUSTOM_ITEM_VANILLA}[item_model=\"{gui[progression]}\",{COMMON_SIGNAL_HIDDEN}]")
		elif i == (nb_gui - 1):
			progressions_gui.append(f"$execute if score #progression {ns}.data matches {previous_max + 1}.. run item replace block ~ ~ ~ container.$(slot) with {CUSTOM_ITEM_VANILLA}[item_model=\"{gui[progression]}\",{COMMON_SIGNAL_HIDDEN}]")
		else:
			gui_min: int = previous_max + 1
			previous_max = (i * PULVERIZER_TIME // nb_gui_2) - 1
			progressions_gui.append(f"$execute if score #progression {ns}.data matches {gui_min}..{previous_max} run item replace block ~ ~ ~ container.$(slot) with {CUSTOM_ITEM_VANILLA}[item_model=\"{gui[progression]}\",{COMMON_SIGNAL_HIDDEN}]")
	write_function(funcs["gui_progression"], "\n".join(progressions_gui))


	# Handle intruder item on gui
	write_function(funcs["handle_item_on_gui"], f"""
$data modify storage {ns}:temp intruder set from block ~ ~ ~ Items[{{Slot:$(slot)b}}]

# If slot is unlocked or it's not a Slot Unlocker, drop the item
scoreboard players set #drop_item {ns}.data 0
$execute if entity @s[tag={ns}.pulverizer_unlocked_$(index)] run scoreboard players set #drop_item {ns}.data 1
execute if score #drop_item {ns}.data matches 0 unless data storage {ns}:temp intruder.components."minecraft:custom_data".{ns}.slot_unlocker run scoreboard players set #drop_item {ns}.data 1
execute if score #drop_item {ns}.data matches 1 run summon item ~ ~ ~ {{Item:{{id:"minecraft:stone",count:1b,components:{{"minecraft:custom_data":{{"temp":true}}}}}}}}
execute if score #drop_item {ns}.data matches 1 run return run data modify entity @n[type=item,nbt={{Item:{{components:{{"minecraft:custom_data":{{"temp":true}}}}}}}}] Item set from storage {ns}:temp intruder

# Else unlock the slot, playsound, and drop the item with count decreased by 1
playsound block.anvil.destroy block @a[distance=..12]
clear @a *[minecraft:custom_data={{"common_signals":{{"temp":true}}}}]
$tag @s add {ns}.pulverizer_unlocked_$(index)
execute store result score #count {ns}.data run data get storage {ns}:temp intruder.count
scoreboard players remove #count {ns}.data 1
execute if score #count {ns}.data matches 1.. store result storage {ns}:temp intruder.count byte 1 run scoreboard players get #count {ns}.data
execute if score #count {ns}.data matches 1.. run summon item ~ ~ ~ {{Item:{{id:"minecraft:stone",count:1b,components:{{"minecraft:custom_data":{{"temp":true}}}}}}}}
execute if score #count {ns}.data matches 1.. run data modify entity @n[type=item,nbt={{Item:{{components:{{"minecraft:custom_data":{{"temp":true}}}}}}}}] Item set from storage {ns}:temp intruder
""")


	## Work parts
	# Work function
	for_each_slots: str = "\n".join(f"execute if entity @s[tag={ns}.pulverizer_unlocked_{i}] run function {funcs["gui_active_slot"]} {{\"index\":{i},\"slot\":{i+9},\"result\":{i+9*2}}}" for i in range(PULVERIZER_SLOTS))
	write_function(funcs["work"], f"""
# Monitor if any slot is working, the recipe being searched again for each pulverizer
data remove storage {ns}:temp previous_ingredient
{for_each_slots}

# Consume energy if any slot is working
execute if score #working {ns}.data matches 1.. run scoreboard players set #20 {ns}.data 20
execute if score #working {ns}.data matches 1.. run scoreboard players operation #energy_rate {ns}.data = @s {ns}.energy_rate
execute if score #working {ns}.data matches 1.. run scoreboard players operation #energy_rate {ns}.data /= #20 {ns}.data
execute if score #working {ns}.data matches 1.. run scoreboard players operation @s energy.storage -= #energy_rate {ns}.data
""")

	# Reset progress function
	write_function(funcs["reset_progress"], f"""
scoreboard players set #progression {ns}.data 0
$scoreboard players set @s {ns}.pulverizer_progress_$(index) 0
$function {funcs["gui_progression"]} {{"index":$(index),"slot":$(slot)}}
return fail
""")

	# Gui for each active slot
	write_function(funcs["gui_active_slot"], f"""
$scoreboard players operation #progression {ns}.data = @s {ns}.pulverizer_progress_$(index)

# Isolate ingredient, the container being read at most once per tick, and only when an ingredient is there
$execute unless items block ~ ~ ~ container.$(index) * run return run function {funcs["reset_progress"]} {{"index":$(index),"slot":$(slot)}}
execute unless data storage {ns}:temp Items run data modify storage {ns}:temp Items set from block ~ ~ ~ Items
$data modify storage {ns}:main pulverizer.input set from storage {ns}:temp Items[{{Slot:$(index)b}}]

# Search the recipe, unless the previous slot holds the same ingredient and left #found and the output as they are
data modify storage {ns}:temp ingredient set from storage {ns}:main pulverizer.input
data remove storage {ns}:temp ingredient.Slot
data remove storage {ns}:temp ingredient.count
execute store success score #new_ingredient {ns}.data run data modify storage {ns}:temp previous_ingredient set from storage {ns}:temp ingredient
execute if score #new_ingredient {ns}.data matches 1 run function {funcs["get_pulverizer_recipe"]}

# If no recipe found, stop
$execute if score #found {ns}.data matches 0 run return run function {funcs["reset_progress"]} {{"index":$(index),"slot":$(slot)}}

# Else, if output do not match current output slot, stop
scoreboard players set #output_occupied {ns}.data 0
$execute if data storage {ns}:temp Items[{{Slot:$(result)b}}] run scoreboard players set #output_occupied {ns}.data 1
execute if score #output_occupied {ns}.data matches 1 run scoreboard players set #is_not_same_output {ns}.data 0
$execute if score #output_occupied {ns}.data matches 1 run data modify storage {ns}:temp copy set from storage {ns}:temp Items[{{Slot:$(result)b}}]
execute if score #output_occupied {ns}.data matches 1 store success score #is_not_same_output {ns}.data run data modify storage {ns}:temp copy.id set from storage {ns}:main pulverizer.output.id
execute if score #output_occupied {ns}.data matches 1 if score #is_not_same_output {ns}.data matches 0 store success score #is_not_same_output {ns}.data run data modify storage {ns}:temp copy.components set from storage {ns}:main pulverizer.output.components
$execute if score #output_occupied {ns}.data matches 1 if score #is_not_same_output {ns}.data matches 1 run return run function {funcs["reset_progress"]} {{"index":$(index),"slot":$(slot)}}

# Calculate the output count
execute store result score #count {ns}.data run data get storage {ns}:temp copy.count
execute store result score #to_add {ns}.data run data get storage {ns}:main pulverizer.output.count
scoreboard players operation #count {ns}.data += #to_add {ns}.data
$execute if score #output_occupied {ns}.data matches 1 store result score #max_stack_size {ns}.data run function {funcs["get_max_stack_size"]} {{"result":$(result)}}
$execute if score #output_occupied {ns}.data matches 1 if score #count {ns}.data > #max_stack_size {ns}.data run return run function {funcs["reset_progress"]} {{"index":$(index),"slot":$(slot)}}

# Progress the slot
scoreboard players add #progression {ns}.data 1
$execute if score #progression {ns}.data matches ..{PULVERIZER_TIME - 1} run scoreboard players operation @s {ns}.pulverizer_progress_$(index) = #progression {ns}.data
scoreboard players add #working {ns}.data 1

# Add the item to the result slot if progression is done
execute if score #progression {ns}.data matches ..{PULVERIZER_TIME - 1} run return 1
$execute if score #output_occupied {ns}.data matches 1 store result block ~ ~ ~ Items[{{Slot:$(result)b}}].count int 1 run scoreboard players get #count {ns}.data
$execute if score #output_occupied {ns}.data matches 0 run data modify storage {ns}:main pulverizer.output.Slot set value $(result)b
execute if score #output_occupied {ns}.data matches 0 run data modify block ~ ~ ~ Items append from storage {ns}:main pulverizer.output

# Reset progression and remove 1 count to ingredient
$function {funcs["reset_progress"]} {{"index":$(index),"slot":$(slot)}}
execute store result score #count {ns}.data run data get storage {ns}:main pulverizer.input.count
scoreboard players remove #count {ns}.data 1
$execute if score #count {ns}.data matches 1.. store result block ~ ~ ~ Items[{{Slot:$(index)b}}].count int 1 run scoreboard players get #count {ns}.data
$execute if score #count {ns}.data matches 0 run data remove block ~ ~ ~ Items[{{Slot:$(index)b}}]
""")

	# Get pulverizer recipe function, recipes put their output in the contents of the item_display they run as
	recipe_display: str = persistent_item_display("pulverizer_recipe")
	write_function(funcs["get_pulverizer_recipe"], f"""
scoreboard players set #found {ns}.data 0
execute as {recipe_display} run function #{ns}:calls/pulverizer_recipes
execute if score #found {ns}.data matches 1 run data modify storage {ns}:main pulverizer.output set from entity {recipe_display} item
""")

	# Get max stack size function
	content: str = ""
	numbers: list[int] = [64, 16, 1, 99]
	numbers += [i for i in range(1, 100) if i not in numbers]
	for i in numbers:
		content += f"$execute if items block ~ ~ ~ container.$(result) *[minecraft:max_stack_size={i}] run return {i}\n"
	write_function(funcs["get_max_stack_size"], content)

	# Keep track of unlocked slots when destroying and placing
	write_function(funcs.destroy, f"""# Copy slots to storage
data modify storage {ns}:temp slots set value [{','.join(['{}'] * PULVERIZER_SLOTS)}]
""" + "\n".join(f"execute unless entity @s[tag={ns}.pulverizer_unlocked_{i}] run data modify storage {ns}:temp slots[{i}].blocked set value true" for i in range(PULVERIZER_SLOTS))
	+ "\n" + "\n".join(f"execute store result storage {ns}:temp slots[{i}].progression int 1 run scoreboard players get @s {ns}.pulverizer_progress_{i}" for i in range(PULVERIZER_SLOTS))
	+ "\n\n", prepend = True)
	write_function(funcs.replace_item, f"""
# Save slots to the item components
execute if data storage {ns}:temp slots run data modify entity @s Item.components."minecraft:custom_data".{ns}.pulverizer_slots set from storage {ns}:temp slots
execute if data storage {ns}:temp slots run data modify entity @s Item.components."minecraft:lore" prepend value {{"text":"Unlocked slots saved.","color":"dark_gray","italic":false}}
""")
	write_function(funcs.place_secondary, f"""
# Copy slots to the item components
data modify entity @s item.components."minecraft:custom_data".{ns}.pulverizer_slots set from entity @p[tag={ns}.placer] SelectedItem.components."minecraft:custom_data".{ns}.pulverizer_slots
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
		content += f'{base} append value {{"Slot":{i}b,"mode":"input","allowed_side":{{"north":true,"south":true,"east":true,"west":true,"top":true}}}}\n'
	for i in range(PULVERIZER_SLOTS):
		content += f'{base} append value {{"Slot":{i+2*9}b,"mode":"output","allowed_side":{{"bottom":true}}}}\n'
	content += "function #itemio:calls/container/init\n"
	write_function(funcs.place_secondary, content)
	write_function(funcs.destroy, "# ItemIO compatibility\nfunction #itemio:calls/container/destroy\n\n", prepend = True)

	return

