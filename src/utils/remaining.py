
# ruff: noqa: E501
# Imports
import stouputils as stp
from beet import Advancement, BlockTag, FunctionTag, ItemModifier, Predicate
from stewbeet.core import *
from stewbeet.core.utils.io import write_function, write_versioned_function


# Setup energy balancing
def setup_remaining() -> None:
	ns: str = Mem.ctx.project_id

	# Passive multimeter & battery switcher working every 2 ticks
	write_versioned_function("tick_2", f"""
# Passive offhand loop
execute as @a[tag=!global.ignore.gui,tag={ns}.offhand] at @s run function {ns}:utils/passive_offhand
""")
	write_function(f"{ns}:utils/passive_offhand", f"""
# Copy offhand
data modify storage {ns}:main OffhandTag set from entity @s equipment.offhand.components."minecraft:custom_data"

# Switch case
execute if data storage {ns}:main OffhandTag.{ns}.multimeter anchored eyes positioned ^ ^ ^.2 run function {ns}:utils/multimeter/passive/main
execute if data storage {ns}:main OffhandTag.{ns}.battery_switcher anchored eyes positioned ^ ^ ^.2 run function {ns}:utils/battery_switcher/passive/pre_raycast

# Memory clean up
data remove storage {ns}:main OffhandTag
""")


	# Setup stats function
	write_function(f"{ns}:_stats", f"""
# Get numbers
execute store result score #entities {ns}.data if entity @e[scores={{energy.transfer_rate=1..}}]
execute store result score #cables {ns}.data if entity @e[scores={{energy.transfer_rate=1..}},tag=energy.cable]
execute store result score #devices {ns}.data if entity @e[scores={{energy.transfer_rate=1..}},tag=!energy.cable]
execute store result score #senders {ns}.data if entity @e[scores={{energy.transfer_rate=1..}},tag=energy.send,tag=!energy.receive]
execute store result score #receivers {ns}.data if entity @e[scores={{energy.transfer_rate=1..}},tag=!energy.send,tag=energy.receive]
execute store result score #batteries {ns}.data if entity @e[scores={{energy.transfer_rate=1..}},tag=energy.send,tag=energy.receive]

execute store result score #custom_blocks {ns}.data if entity @e[tag={ns}.custom_block]
execute store result score #custom_ores {ns}.data if entity @e[tag={ns}.vanilla.minecraft_polished_deepslate]
execute store result score #markers {ns}.data if entity @e[tag=furnace_nbt_recipes.furnace]

# Display numbers
tellraw @s [{{"text":"\\n[Datapack Energy Stats]","color":"yellow"}}]
tellraw @s ["",{{"text":"Entities: ","color":"gray"}},{{"score":{{"name":"#entities","objective":"{ns}.data"}},"color":"gold"}}]
tellraw @s ["",{{"text":"Cables: ","color":"gray"}},{{"score":{{"name":"#cables","objective":"{ns}.data"}},"color":"gold"}}]
tellraw @s ["",{{"text":"Devices: ","color":"gray"}},{{"score":{{"name":"#devices","objective":"{ns}.data"}},"color":"gold"}}]
tellraw @s ["",{{"text":"Only energy.send: ","color":"gray"}},{{"score":{{"name":"#senders","objective":"{ns}.data"}},"color":"gold"}}]
tellraw @s ["",{{"text":"Only energy.receive: ","color":"gray"}},{{"score":{{"name":"#receivers","objective":"{ns}.data"}},"color":"gold"}}]
tellraw @s ["",{{"text":"Send & Receive: ","color":"gray"}},{{"score":{{"name":"#batteries","objective":"{ns}.data"}},"color":"gold"}}]

tellraw @s [{{"text":"\\n[SimplEnergy Stats]","color":"green"}}]
tellraw @s ["",{{"text":"Custom blocks loaded: ","color":"gray"}},{{"score":{{"name":"#custom_blocks","objective":"{ns}.data"}},"color":"gold"}}]
tellraw @s ["",{{"text":"Custom ores: ","color":"gray"}},{{"score":{{"name":"#custom_ores","objective":"{ns}.data"}},"color":"gold"}}]
tellraw @s ["",{{"text":"Markers on furnaces: ","color":"gray"}},{{"score":{{"name":"#markers","objective":"{ns}.data"}},"color":"gold"}}]
""")


	# Check daylight power predicate
	json_content: dict = {"condition":"minecraft:any_of","terms":[{"condition":"minecraft:location_check","predicate":{"block":{"state":{"inverted":"false","power":{"min":"10","max":"15"}}}}},{"condition":"minecraft:location_check","predicate":{"block":{"state":{"inverted":"true","power":{"min":"0","max":"5"}}}}}]}
	Mem.ctx.data[ns].predicates["check_daylight_power"] = Predicate(super_json_dump(json_content, max_level = -1))


	# Setup block tags
	json_content: dict = {"replace":False,"values":["minecraft:air","minecraft:cave_air","minecraft:void_air","minecraft:structure_void"]}
	Mem.ctx.data[ns].block_tags["air"] = BlockTag(super_json_dump(json_content, max_level = -1))
	json_content: dict = {"replace":False,"values":[f"#{ns}:air","#minecraft:replaceable","#minecraft:wool_carpets","#minecraft:standing_signs","#minecraft:wall_signs","#minecraft:saplings","#minecraft:leaves","#minecraft:signs","minecraft:moss_carpet","minecraft:peony","minecraft:rose_bush","minecraft:lilac","minecraft:sunflower","minecraft:lily_pad","minecraft:vine","minecraft:red_mushroom","minecraft:brown_mushroom","minecraft:cobweb","minecraft:water","minecraft:kelp_plant","minecraft:seagrass","minecraft:ladder","minecraft:snow","minecraft:powder_snow","minecraft:moving_piston","minecraft:oak_sapling","minecraft:spruce_sapling","minecraft:birch_sapling","minecraft:jungle_sapling","minecraft:acacia_sapling","minecraft:dark_oak_sapling","minecraft:mangrove_propagule","#minecraft:flowers","minecraft:mangrove_propagule","minecraft:cobweb","minecraft:torch","minecraft:wall_torch","minecraft:soul_torch","minecraft:soul_wall_torch","minecraft:spore_blossom","minecraft:brown_mushroom","minecraft:red_mushroom","minecraft:crimson_fungus","minecraft:warped_fungus","minecraft:crimson_roots","minecraft:warped_roots","minecraft:nether_sprouts","minecraft:weeping_vines","minecraft:twisting_vines","minecraft:water","minecraft:sugar_cane","minecraft:kelp","minecraft:hanging_roots","minecraft:small_dripleaf","minecraft:bamboo","minecraft:end_rod","minecraft:vine","#minecraft:corals","minecraft:dead_tube_coral","minecraft:dead_brain_coral","minecraft:dead_bubble_coral","minecraft:dead_fire_coral","minecraft:dead_horn_coral","minecraft:dead_tube_coral_fan","minecraft:dead_brain_coral_fan","minecraft:dead_bubble_coral_fan","minecraft:dead_fire_coral_fan","minecraft:dead_horn_coral_fan","minecraft:scaffolding","#minecraft:flower_pots","#minecraft:banners","minecraft:lantern","minecraft:soul_lantern","minecraft:candle","minecraft:small_amethyst_bud","minecraft:medium_amethyst_bud","minecraft:large_amethyst_bud","minecraft:amethyst_cluster","minecraft:redstone_wire","minecraft:repeater","minecraft:comparator","minecraft:lever","minecraft:tripwire_hook","#minecraft:buttons","#minecraft:pressure_plates","#minecraft:rails","minecraft:conduit"]}
	Mem.ctx.data[ns].block_tags["non_solid"] = BlockTag(super_json_dump(json_content, max_level = -1))


	## Right click detection
	write_versioned_function("load/confirm_load", f"scoreboard objectives add {ns}.right_click minecraft.used:minecraft.warped_fungus_on_a_stick\n")
	write_function(f"{ns}:utils/on_right_click", f"""
# Advancement revoke
advancement revoke @s only {ns}:right_click

# Copy SelectedItem tag to storage and offhand
data modify storage {ns}:main SelectedItemTag set from entity @s SelectedItem.components."minecraft:custom_data"
data modify storage {ns}:main OffhandTag set from entity @s equipment.offhand.components."minecraft:custom_data"

# Switch on SelectedItem tag to run the right click function
execute if data storage {ns}:main SelectedItemTag.{ns}.multimeter run function {ns}:utils/multimeter/right_click/main
execute if data storage {ns}:main SelectedItemTag.{ns}.wrench run function {ns}:utils/wrench/right_click

# Switch on OffhandTag tag
execute if data storage {ns}:main OffhandTag.{ns}.multimeter run function {ns}:utils/multimeter/right_click/main
execute if data storage {ns}:main OffhandTag.{ns}.wrench run function {ns}:utils/wrench/right_click
execute if data storage {ns}:main OffhandTag.{ns}.battery_switcher run function {ns}:utils/battery_switcher/right_click/main


# Memory clean up
data remove storage {ns}:main OffhandTag
data remove storage {ns}:main SelectedItemTag
scoreboard players reset @s {ns}.right_click
""")
	json_content: dict = {"criteria":{"requirement":{"trigger":"minecraft:tick","conditions":{"player":[{"condition":"minecraft:entity_scores","entity":"this","scores":{f"{ns}.right_click":{"min":1}}}]}}},"requirements":[["requirement"]],"rewards":{"function":f"{ns}:utils/on_right_click"}}
	Mem.ctx.data[ns].advancements["right_click"] = Advancement(super_json_dump(json_content, max_level = -1))


	# Setup wrench stuff
	json_content: dict = {"values": [f"{ns}:utils/wrench/rotate/furnace"]}
	Mem.ctx.data[ns].function_tags["calls/wrench_rotate"] = FunctionTag(super_json_dump(json_content, max_level = -1))
	write_function(f"{ns}:utils/wrench/right_click", f"""
# Look at where player is looking at and stop when found a block
scoreboard players set #raycast {ns}.data 0
execute anchored eyes positioned ^ ^ ^.2 run function {ns}:utils/wrench/raycast
scoreboard players reset #raycast {ns}.data
""")
	write_function(f"{ns}:utils/wrench/raycast", f"""
# Stop case when raycast hits a block that is from wrench_raycast tag
execute unless block ~ ~ ~ #{ns}:non_solid align xyz run function {ns}:utils/wrench/stop_case

# Continue raycast until it hits a block that is solid or the max distance is reached
execute if score #raycast {ns}.data matches 0 if entity @s[distance=..5] if block ~ ~ ~ #{ns}:non_solid positioned ^ ^ ^.2 run function {ns}:utils/wrench/raycast
""")
	write_function(f"{ns}:utils/wrench/stop_case", f"""
# Try to rotation block from {ns} or mechanization or break cable
scoreboard players set #raycast {ns}.data 1
scoreboard players set #success {ns}.data 0

execute as @n[tag={ns}.rotatable,dx=0,dy=0,dz=0] at @s run function {ns}:utils/wrench/rotate
execute if score #success {ns}.data matches 0 store result score #success {ns}.data as @n[tag=mechanization.rotatable,dx=0,dy=0,dz=0] at @s run function mechanization:base/player/wrench/rotate_machine
execute if score #success {ns}.data matches 0 store result score #success {ns}.data as @n[tag=mechanization.cable,dx=0,dy=0,dz=0] at @s run function #mechanization:wrench_break
execute if score #success {ns}.data matches 0 store result score #success {ns}.data at @n[tag={ns}.cable,dx=0,dy=0,dz=0] run setblock ~ ~ ~ air destroy

# Playsound if block was rotated or cable was broken
execute if score #success {ns}.data matches 1 run playsound block.stone.break block @s
""")
	write_function(f"{ns}:utils/wrench/rotate", f"""
# Copy block data
scoreboard players set #success {ns}.data 1
data modify storage {ns}:main Block set from block ~ ~ ~

# Rotate custom block
execute store result score #rotation {ns}.data run data get entity @s Rotation[0]
scoreboard players add #rotation {ns}.data 90
scoreboard players set #360 {ns}.data 360
scoreboard players operation #rotation {ns}.data %= #360 {ns}.data
execute store result entity @s Rotation[0] float 1 run scoreboard players get #rotation {ns}.data

# Rotate base block
function #{ns}:calls/wrench_rotate

# Memory clean up and particle effect
data remove storage {ns}:main Block
particle block{{block_state:"minecraft:furnace"}} ~ ~ ~ .5 .5 .5 0.1 10
""")
	write_function(f"{ns}:utils/wrench/rotate/furnace", f"""
# Check for furnace rotation
scoreboard players set #is_furnace {ns}.data 0
execute store success score #is_furnace {ns}.data if block ~ ~ ~ furnace
execute if score #is_furnace {ns}.data matches 1 if score #rotation {ns}.data matches 0 run setblock ~ ~ ~ furnace[facing=north] replace
execute if score #is_furnace {ns}.data matches 1 if score #rotation {ns}.data matches 90 run setblock ~ ~ ~ furnace[facing=east] replace
execute if score #is_furnace {ns}.data matches 1 if score #rotation {ns}.data matches 180 run setblock ~ ~ ~ furnace[facing=south] replace
execute if score #is_furnace {ns}.data matches 1 if score #rotation {ns}.data matches 270 run setblock ~ ~ ~ furnace[facing=west] replace

# Apply data back to furnace
execute if score #is_furnace {ns}.data matches 1 run data modify block ~ ~ ~ {{}} merge from storage {ns}:main Block
""")


	## Setup multimeter stuff
	# Right click
	write_function(f"{ns}:utils/multimeter/right_click/main", f"""
# Look at where player is looking at and stop when found a block
execute anchored eyes positioned ^ ^ ^.2 run function {ns}:utils/multimeter/right_click/raycast
""")
	write_function(f"{ns}:utils/multimeter/right_click/raycast", f"""
# Stop case when raycast hits a block that is solid
execute unless block ~ ~ ~ #{ns}:non_solid run function {ns}:utils/multimeter/right_click/stop_case

# Continue raycast until it hits a block that is solid or the max distance is reached
execute if entity @s[distance=..5] if block ~ ~ ~ #{ns}:non_solid positioned ^ ^ ^.2 run function {ns}:utils/multimeter/right_click/raycast
""")
	write_function(f"{ns}:utils/multimeter/right_click/stop_case", f"""
# Tellraw Energy Display
tag @s add {ns}.temp
execute as @n[scores={{energy.max_storage=1..}},distance=..1.5] run tellraw @a[tag={ns}.temp] [{{"text":"Energy stored: ","italic":false,"color":"aqua"}},{{"score":{{"name":"@s","objective":"energy.storage"}},"italic":false,"color":"yellow"}},{{"text":"/"}},{{"score":{{"name":"@s","objective":"energy.max_storage"}},"italic":false,"color":"yellow"}},{{"text":" kJ\\nChange Rate: "}},{{"score":{{"name":"@s","objective":"energy.change_rate"}},"italic":false,"color":"yellow"}},{{"text":" kW"}}]
tag @s remove {ns}.temp
""")

	# Passive
	write_function(f"{ns}:utils/multimeter/passive/main", f"""
# Stop case when raycast hits a block that is solid
execute unless block ~ ~ ~ #{ns}:non_solid run function {ns}:utils/multimeter/passive/stop_case

# Continue raycast until it hits a block that is solid or the max distance is reached
execute if entity @s[distance=..5] if block ~ ~ ~ #{ns}:non_solid positioned ^ ^ ^.5 run function {ns}:utils/multimeter/passive/main
""")
	write_function(f"{ns}:utils/multimeter/passive/stop_case", f"""
# Execute at the block found the function
tag @s add {ns}.temp
execute as @n[scores={{energy.max_storage=1..}},distance=..1.5] at @s align xyz run function {ns}:utils/multimeter/passive/found_entity
tag @s remove {ns}.temp
""")
	write_function(f"{ns}:utils/multimeter/passive/found_entity", f"""
# Summon glowing snowball on block
execute unless block ~ ~ ~ #{ns}:non_solid run summon snowball ~.5 ~.3 ~.5 {{NoGravity:1b,Silent:1b,Glowing:1b,Tags:["{ns}.multimeter_marker"]}}

# Title to the player
title @a[tag={ns}.temp] actionbar [{{"text":"Energy stored: ","italic":false,"color":"aqua"}},{{"score":{{"name":"@s","objective":"energy.storage"}},"italic":false,"color":"yellow"}},{{"text":"/"}},{{"score":{{"name":"@s","objective":"energy.max_storage"}},"italic":false,"color":"yellow"}},{{"text":" kJ"}},{{"text":"  |  ","color":"yellow"}},{{"text":"Change Rate: "}},{{"score":{{"name":"@s","objective":"energy.change_rate"}},"italic":false,"color":"yellow"}},{{"text":" kW"}}]

# Remove the snowball by schedule function
schedule function {ns}:utils/multimeter/passive/remove_markers 1t replace
""")
	write_function(f"{ns}:utils/multimeter/passive/remove_markers", f"""
# Score initialization and kill snowball entities alive for more than 5 ticks
scoreboard players set #success {ns}.data 0
kill @e[type=snowball,tag={ns}.multimeter_marker,scores={{{ns}.private=5..}}]

# Increase private score by 1
execute store success score #success {ns}.data run scoreboard players add @e[type=snowball,tag={ns}.multimeter_marker] {ns}.private 1

# Run again schedule if there are remaining snowballs
execute if score #success {ns}.data matches 1 run schedule function {ns}:utils/multimeter/passive/remove_markers 1t replace
""")


	## Setup battery switcher stuff
	# State functions
	write_function(f"{ns}:utils/battery_switcher/get_state", f"""
scoreboard players set #state {ns}.data 0
execute if score #state {ns}.data matches 0 if entity @s[tag=energy.send,tag=energy.receive] run scoreboard players set #state {ns}.data 1
execute if score #state {ns}.data matches 0 if entity @s[tag=energy.send] run scoreboard players set #state {ns}.data 2
execute if score #state {ns}.data matches 0 if entity @s[tag=energy.receive] run scoreboard players set #state {ns}.data 3
""")
	write_function(f"{ns}:utils/battery_switcher/next_state", f"""
scoreboard players add #state {ns}.data 1
execute if score #state {ns}.data matches 4 run scoreboard players set #state {ns}.data 1

execute if score #state {ns}.data matches 1 run tag @s add energy.send
execute if score #state {ns}.data matches 1 run tag @s add energy.receive

execute if score #state {ns}.data matches 2 run tag @s remove energy.receive
execute if score #state {ns}.data matches 2 run tag @s add energy.send

execute if score #state {ns}.data matches 3 run tag @s add energy.receive
execute if score #state {ns}.data matches 3 run tag @s remove energy.send
""")

	# Right click
	write_function(f"{ns}:utils/battery_switcher/right_click/main", f"""
# Look at where player is looking at and stop when found a block
execute anchored eyes positioned ^ ^ ^.2 run function {ns}:utils/battery_switcher/right_click/raycast
""")
	write_function(f"{ns}:utils/battery_switcher/right_click/raycast", f"""
# Stop case when raycast hits a block that is solid
execute unless block ~ ~ ~ #{ns}:non_solid run function {ns}:utils/battery_switcher/right_click/stop_case

# Continue raycast until it hits a block that is solid or the max distance is reached
execute if entity @s[distance=..5] if block ~ ~ ~ #{ns}:non_solid positioned ^ ^ ^.2 run function {ns}:utils/battery_switcher/right_click/raycast
""")
	write_function(f"{ns}:utils/battery_switcher/right_click/stop_case", f"""
tag @s add {ns}.temp
execute as @n[tag={ns}.battery_switcher,scores={{energy.max_storage=1..}},distance=..1.5] run function {ns}:utils/battery_switcher/right_click/found_entity
tag @s remove {ns}.temp
""")
	write_function(f"{ns}:utils/battery_switcher/right_click/found_entity", f"""
# Get current state and go next state
function {ns}:utils/battery_switcher/get_state
function {ns}:utils/battery_switcher/next_state
""")

	# Passive
	write_function(f"{ns}:utils/battery_switcher/passive/pre_raycast", f"""
# If no battery found (no state), set custom model data to default
scoreboard players set #state {ns}.data 0
function {ns}:utils/battery_switcher/passive/main
execute if score #state {ns}.data matches 0 run item modify entity @s weapon.offhand {ns}:battery_switcher/default
""")
	write_function(f"{ns}:utils/battery_switcher/passive/main", f"""
# Stop case when raycast hits a block that is solid
execute unless block ~ ~ ~ #{ns}:non_solid run function {ns}:utils/battery_switcher/passive/stop_case

# Continue raycast until it hits a block that is solid or the max distance is reached
execute if entity @s[distance=..5] if block ~ ~ ~ #{ns}:non_solid positioned ^ ^ ^.5 run function {ns}:utils/battery_switcher/passive/main
""")
	write_function(f"{ns}:utils/battery_switcher/passive/stop_case", f"""
# Execute at the block found the function
tag @s add {ns}.temp
execute as @n[tag={ns}.battery_switcher,scores={{energy.max_storage=1..}},distance=..1.5] at @s align xyz positioned ~.5 ~.3 ~.5 run function {ns}:utils/battery_switcher/passive/found_entity
tag @s remove {ns}.temp
""")

	write_function(f"{ns}:utils/battery_switcher/passive/found_entity", f"""
# Get current state
function {ns}:utils/battery_switcher/get_state

# Summon glowing egg on block depending on the state
execute unless block ~ ~ ~ #{ns}:non_solid run summon egg ~ ~ ~ {{NoGravity:1b,Silent:1b,Glowing:1b,Tags:["{ns}.battery_switcher_marker"]}}
execute if score #state {ns}.data matches 1 run team join {ns}.green @e[type=egg,tag={ns}.battery_switcher_marker,distance=..0.5]
execute if score #state {ns}.data matches 2 run team join {ns}.aqua @e[type=egg,tag={ns}.battery_switcher_marker,distance=..0.5]
execute if score #state {ns}.data matches 3 run team join {ns}.gold @e[type=egg,tag={ns}.battery_switcher_marker,distance=..0.5]

# Title to the player
execute if score #state {ns}.data matches 1 run title @a[tag={ns}.temp] actionbar [{{"text":"Current state: ","color":"gray"}},{{"text":"[Input & Output]","color":"green"}}]
execute if score #state {ns}.data matches 2 run title @a[tag={ns}.temp] actionbar [{{"text":"Current state: ","color":"gray"}},{{"text":"[Output]","color":"aqua"}}]
execute if score #state {ns}.data matches 3 run title @a[tag={ns}.temp] actionbar [{{"text":"Current state: ","color":"gray"}},{{"text":"[Input]","color":"gold"}}]

# Modify player's offhand custom model data
execute if score #state {ns}.data matches 1 run item modify entity @a[tag={ns}.temp] weapon.offhand {ns}:battery_switcher/both
execute if score #state {ns}.data matches 2 run item modify entity @a[tag={ns}.temp] weapon.offhand {ns}:battery_switcher/output
execute if score #state {ns}.data matches 3 run item modify entity @a[tag={ns}.temp] weapon.offhand {ns}:battery_switcher/input


# Remove the egg by schedule function
schedule function {ns}:utils/battery_switcher/passive/remove_markers 1t replace
""")
	write_function(f"{ns}:utils/battery_switcher/passive/remove_markers", f"""
# Score initialization and kill egg entities alive for more than 5 ticks
scoreboard players set #success {ns}.data 0
kill @e[type=egg,tag={ns}.battery_switcher_marker,scores={{{ns}.private=5..}}]

# Increase private score by 1
execute store success score #success {ns}.data run scoreboard players add @e[type=egg,tag={ns}.battery_switcher_marker] {ns}.private 1

# Run again schedule if there are remaining eggs
execute if score #success {ns}.data matches 1 run schedule function {ns}:utils/battery_switcher/passive/remove_markers 1t replace
""")

	# Write item modifiers
	default_model: str = Mem.definitions["battery_switcher"]["item_model"]
	both_model: str = Mem.definitions["battery_switcher_both"]["item_model"]
	input_model: str = Mem.definitions["battery_switcher_input"]["item_model"]
	output_model: str = Mem.definitions["battery_switcher_output"]["item_model"]
	dumped_template: str = stp.super_json_dump({"function": "minecraft:set_components","components":{"minecraft:item_model":"TO_REPLACE"}})
	for mode, model in [("default", default_model), ("both", both_model), ("input", input_model), ("output", output_model)]:
		Mem.ctx.data[ns].item_modifiers[f"battery_switcher/{mode}"] = ItemModifier(dumped_template.replace("TO_REPLACE", model))


	# Setup first_join advancement
	json_content: dict = {"criteria":{"requirement":{"trigger":"minecraft:tick"}},"requirements":[["requirement"]],"rewards":{"function":f"{ns}:advancements/first_join"}}
	Mem.ctx.data[ns].advancements["first_join"] = Advancement(super_json_dump(json_content, max_level = -1))
	write_function(f"{ns}:advancements/first_join", f"""
execute unless score #{ns}.loaded load.status matches 1 run advancement revoke @s only {ns}:first_join
execute if score #{ns}.loaded load.status matches 1 run loot give @s loot {ns}:i/manual
""")


	# Setup inventory_changed advancement
	json_content: dict = {"criteria":{"requirement":{"trigger":"minecraft:inventory_changed"}},"requirements":[["requirement"]],"rewards":{"function":f"{ns}:advancements/inventory_changed"}}
	Mem.ctx.data[ns].advancements["inventory_changed"] = Advancement(super_json_dump(json_content, max_level = -1))
	write_function(f"{ns}:advancements/inventory_changed", f"""
# Revoke advancement
advancement revoke @s only {ns}:inventory_changed
tag @s remove {ns}.offhand

# Get offhand tag if holding multimeter in offhand
execute if items entity @s weapon.offhand *[custom_data~{{"{ns}":{{"multimeter":true}}}}] run tag @s add {ns}.offhand

# Get offhand tag if holding battery switcher in offhand
execute if items entity @s weapon.offhand *[custom_data~{{"{ns}":{{"battery_switcher":true}}}}] run tag @s add {ns}.offhand

# For loop for each item in inventory
data modify storage {ns}:main Inventory set from entity @s Inventory
function {ns}:advancements/inventory_changed_loop with storage {ns}:main Inventory[0]
""")

	# Inventory loop
	write_function(f"{ns}:advancements/inventory_changed_loop", f"""
# Get item in inventory and slot
data modify storage {ns}:main Item set from storage {ns}:main Inventory[0]
execute store result score #slot {ns}.data run data get storage {ns}:main Item.Slot

# If item is a battery switcher and not in offhand, set custom model data to default
$execute if score #slot {ns}.data matches 0.. if data storage {ns}:main Item.components."minecraft:custom_data".{ns}.battery_switcher run item modify entity @s container.$(Slot) {ns}:battery_switcher/default

# Remove element and go next
data remove storage {ns}:main Inventory[0]
execute if data storage {ns}:main Inventory[0] run function {ns}:advancements/inventory_changed_loop with storage {ns}:main Inventory[0]
""")



	# Private score
	write_versioned_function("load/confirm_load", f"""
scoreboard objectives add {ns}.private dummy
team add {ns}.green
team add {ns}.gold
team add {ns}.aqua
team modify {ns}.green color green
team modify {ns}.gold color gold
team modify {ns}.aqua color aqua
""", prepend = True)


	return

