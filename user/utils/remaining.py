
# Imports
from python_datapack.utils.print import *
from python_datapack.utils.io import *

# Setup energy balancing
def setup_remaining(config: dict) -> None:
	namespace: str = config['namespace']
	build_datapack: str = config['build_datapack']
	functions: str = f"{build_datapack}/data/{namespace}/function"

	# Passive multimeter working every 2 ticks
	write_to_versioned_file(config, "tick_2", f"""
# Passive multimeter
execute as @a[tag=!global.ignore.gui,tag={namespace}.state.multimeter] at @s anchored eyes positioned ^ ^ ^.2 run function {namespace}:utils/multimeter/passive/main
""")
	

	# Setup stats function
	write_to_file(f"{functions}/_stats.mcfunction", f"""
# Get numbers
execute store result score #entities {namespace}.data if entity @e[scores={{energy.transfer_rate=1..}}]
execute store result score #cables {namespace}.data if entity @e[scores={{energy.transfer_rate=1..}},tag=energy.cable]
execute store result score #devices {namespace}.data if entity @e[scores={{energy.transfer_rate=1..}},tag=!energy.cable]
execute store result score #senders {namespace}.data if entity @e[scores={{energy.transfer_rate=1..}},tag=energy.send,tag=!energy.receive]
execute store result score #receivers {namespace}.data if entity @e[scores={{energy.transfer_rate=1..}},tag=!energy.send,tag=energy.receive]
execute store result score #batteries {namespace}.data if entity @e[scores={{energy.transfer_rate=1..}},tag=energy.send,tag=energy.receive]

execute store result score #custom_blocks {namespace}.data if entity @e[tag={namespace}.custom_block]
execute store result score #custom_ores {namespace}.data if entity @e[tag={namespace}.vanilla.minecraft_polished_deepslate]
execute store result score #markers {namespace}.data if entity @e[tag=furnace_nbt_recipes.furnace]

# Display numbers
tellraw @s [{{"text":"\n[Datapack Energy Stats]","color":"yellow"}}]
tellraw @s ["",{{"text":"Entities: ","color":"gray"}},{{"score":{{"name":"#entities","objective":"{namespace}.data"}},"color":"gold"}}]
tellraw @s ["",{{"text":"Cables: ","color":"gray"}},{{"score":{{"name":"#cables","objective":"{namespace}.data"}},"color":"gold"}}]
tellraw @s ["",{{"text":"Devices: ","color":"gray"}},{{"score":{{"name":"#devices","objective":"{namespace}.data"}},"color":"gold"}}]
tellraw @s ["",{{"text":"Only energy.send: ","color":"gray"}},{{"score":{{"name":"#senders","objective":"{namespace}.data"}},"color":"gold"}}]
tellraw @s ["",{{"text":"Only energy.receive: ","color":"gray"}},{{"score":{{"name":"#receivers","objective":"{namespace}.data"}},"color":"gold"}}]
tellraw @s ["",{{"text":"Send & Receive: ","color":"gray"}},{{"score":{{"name":"#batteries","objective":"{namespace}.data"}},"color":"gold"}}]

tellraw @s [{{"text":"\n[SimplEnergy Stats]","color":"green"}}]
tellraw @s ["",{{"text":"Custom blocks loaded: ","color":"gray"}},{{"score":{{"name":"#custom_blocks","objective":"{namespace}.data"}},"color":"gold"}}]
tellraw @s ["",{{"text":"Custom ores: ","color":"gray"}},{{"score":{{"name":"#custom_ores","objective":"{namespace}.data"}},"color":"gold"}}]
tellraw @s ["",{{"text":"Markers on furnaces: ","color":"gray"}},{{"score":{{"name":"#markers","objective":"{namespace}.data"}},"color":"gold"}}]
""")
	

	# Check daylight power predicate
	json_content: dict = {"condition":"minecraft:any_of","terms":[{"condition":"minecraft:location_check","predicate":{"block":{"state":{"inverted":"false","power":{"min":"10","max":"15"}}}}},{"condition":"minecraft:location_check","predicate":{"block":{"state":{"inverted":"true","power":{"min":"0","max":"5"}}}}}]}
	write_to_file(f"{build_datapack}/data/{namespace}/predicate/check_daylight_power.json", super_json_dump(json_content, max_level = -1))


	# Setup block tags
	json_content: dict = {"replace":False,"values":["minecraft:air","minecraft:cave_air","minecraft:void_air","minecraft:structure_void"]}
	write_to_file(f"{build_datapack}/data/{namespace}/tags/block/air.json", super_json_dump(json_content, max_level = -1))
	json_content: dict = {"replace":False,"values":[f"#{namespace}:air","#minecraft:replaceable","#minecraft:wool_carpets","#minecraft:standing_signs","#minecraft:wall_signs","#minecraft:saplings","#minecraft:leaves","#minecraft:signs","minecraft:moss_carpet","minecraft:player_head","minecraft:player_wall_head","minecraft:peony","minecraft:rose_bush","minecraft:lilac","minecraft:sunflower","minecraft:lily_pad","minecraft:vine","minecraft:red_mushroom","minecraft:brown_mushroom","minecraft:cobweb","minecraft:water","minecraft:kelp_plant","minecraft:seagrass","minecraft:ladder","minecraft:snow","minecraft:powder_snow","minecraft:moving_piston","minecraft:oak_sapling","minecraft:spruce_sapling","minecraft:birch_sapling","minecraft:jungle_sapling","minecraft:acacia_sapling","minecraft:dark_oak_sapling","minecraft:mangrove_propagule","#minecraft:small_flowers","#minecraft:tall_flowers","minecraft:mangrove_propagule","minecraft:cobweb","minecraft:torch","minecraft:wall_torch","minecraft:soul_torch","minecraft:soul_wall_torch","minecraft:spore_blossom","minecraft:brown_mushroom","minecraft:red_mushroom","minecraft:crimson_fungus","minecraft:warped_fungus","minecraft:crimson_roots","minecraft:warped_roots","minecraft:nether_sprouts","minecraft:weeping_vines","minecraft:twisting_vines","minecraft:water","minecraft:sugar_cane","minecraft:kelp","minecraft:hanging_roots","minecraft:small_dripleaf","minecraft:bamboo","minecraft:end_rod","minecraft:vine","#minecraft:corals","minecraft:dead_tube_coral","minecraft:dead_brain_coral","minecraft:dead_bubble_coral","minecraft:dead_fire_coral","minecraft:dead_horn_coral","minecraft:dead_tube_coral_fan","minecraft:dead_brain_coral_fan","minecraft:dead_bubble_coral_fan","minecraft:dead_fire_coral_fan","minecraft:dead_horn_coral_fan","minecraft:scaffolding","#minecraft:flower_pots","#minecraft:banners","minecraft:lantern","minecraft:soul_lantern","minecraft:candle","minecraft:small_amethyst_bud","minecraft:medium_amethyst_bud","minecraft:large_amethyst_bud","minecraft:amethyst_cluster","minecraft:redstone_wire","minecraft:repeater","minecraft:comparator","minecraft:lever","minecraft:tripwire_hook","#minecraft:buttons","#minecraft:pressure_plates","#minecraft:rails","minecraft:conduit"]}
	write_to_file(f"{build_datapack}/data/{namespace}/tags/block/non_solid.json", super_json_dump(json_content, max_level = -1))


	## Right click detection
	write_to_versioned_file(config, "load/confirm_load", f"scoreboard objectives add {namespace}.right_click minecraft.used:minecraft.warped_fungus_on_a_stick\n", prepend = True)
	write_to_file(f"{functions}/utils/on_right_click.mcfunction", f"""
# Advancement revoke
advancement revoke @s only {namespace}:right_click

# Copy SelectedItem tag to storage
data modify storage {namespace}:main SelectedItemTag set from entity @s SelectedItem.components."minecraft:custom_data"

# Switch on SelectedItem tag to run the right click function
execute if data storage {namespace}:main SelectedItemTag.{namespace}.multimeter run function {namespace}:utils/multimeter/right_click/main
execute if data storage {namespace}:main SelectedItemTag.{namespace}.wrench run function {namespace}:utils/wrench/right_click

# Memory clean up
data remove storage {namespace}:main SelectedItemTag
scoreboard players reset @s {namespace}.right_click
""")
	json_content: dict = {"criteria":{"requirement":{"trigger":"minecraft:tick","conditions":{"player":[{"condition":"minecraft:entity_scores","entity":"this","scores":{f"{namespace}.right_click":{"min":1}}}]}}},"requirements":[["requirement"]],"rewards":{"function":f"{namespace}:utils/on_right_click"}}
	write_to_file(f"{build_datapack}/data/{namespace}/advancement/right_click.json", super_json_dump(json_content, max_level = -1))


	# Setup wrench stuff
	json_content: dict = {"values": [f"{namespace}:utils/wrench/rotate/furnace"]}
	write_to_file(f"{build_datapack}/data/{namespace}/tags/function/calls/wrench_rotate.json", super_json_dump(json_content, max_level = -1))
	write_to_file(f"{functions}/utils/wrench/right_click.mcfunction", f"""
# Look at where player is looking at and stop when found a block
scoreboard players set #raycast {namespace}.data 0
execute anchored eyes positioned ^ ^ ^.2 run function {namespace}:utils/wrench/raycast
scoreboard players reset #raycast {namespace}.data
""")
	write_to_file(f"{functions}/utils/wrench/raycast.mcfunction", f"""
# Stop case when raycast hits a block that is from wrench_raycast tag
execute unless block ~ ~ ~ #{namespace}:non_solid align xyz run function {namespace}:utils/wrench/stop_case

# Continue raycast until it hits a block that is solid or the max distance is reached
execute if score #raycast {namespace}.data matches 0 if entity @s[distance=..5] if block ~ ~ ~ #{namespace}:non_solid positioned ^ ^ ^.2 run function {namespace}:utils/wrench/raycast
""")
	write_to_file(f"{functions}/utils/wrench/stop_case.mcfunction", f"""
# Try to rotation block from {namespace} or mechanization or break cable
scoreboard players set #raycast {namespace}.data 1
scoreboard players set #success {namespace}.data 0

execute as @e[tag={namespace}.rotatable,limit=1,sort=nearest,dx=0,dy=0,dz=0] at @s run function {namespace}:utils/wrench/rotate
execute if score #success {namespace}.data matches 0 store result score #success {namespace}.data as @e[tag=mechanization.rotatable,limit=1,sort=nearest,dx=0,dy=0,dz=0] at @s run function mechanization:base/player/wrench/rotate_machine
execute if score #success {namespace}.data matches 0 store result score #success {namespace}.data as @e[tag=mechanization.cable,limit=1,sort=nearest,dx=0,dy=0,dz=0] at @s run function #mechanization:wrench_break
execute if score #success {namespace}.data matches 0 store result score #success {namespace}.data at @e[tag={namespace}.cable,limit=1,sort=nearest,dx=0,dy=0,dz=0] run setblock ~ ~ ~ air destroy

# Playsound if block was rotated or cable was broken
execute if score #success {namespace}.data matches 1 run playsound block.stone.break block @s
""")
	write_to_file(f"{functions}/utils/wrench/rotate.mcfunction", f"""
# Copy block data
scoreboard players set #success {namespace}.data 1
data modify storage {namespace}:main Block set from block ~ ~ ~

# Rotate custom block
execute store result score #rotation {namespace}.data run data get entity @s Rotation[0]
scoreboard players add #rotation {namespace}.data 90
scoreboard players set #360 {namespace}.data 360
scoreboard players operation #rotation {namespace}.data %= #360 {namespace}.data
execute store result entity @s Rotation[0] float 1 run scoreboard players get #rotation {namespace}.data

# Rotate base block
function #{namespace}:calls/wrench_rotate

# Memory clean up and particle effect
data remove storage {namespace}:main Block
particle block{{block_state:"minecraft:furnace"}} ~ ~ ~ .5 .5 .5 0.1 10
""")
	write_to_file(f"{functions}/utils/wrench/rotate/furnace.mcfunction", f"""
# Check for furnace rotation
scoreboard players set #is_furnace {namespace}.data 0
execute store success score #is_furnace {namespace}.data if block ~ ~ ~ furnace
execute if score #is_furnace {namespace}.data matches 1 if score #rotation {namespace}.data matches 0 run setblock ~ ~ ~ furnace[facing=north] replace
execute if score #is_furnace {namespace}.data matches 1 if score #rotation {namespace}.data matches 90 run setblock ~ ~ ~ furnace[facing=east] replace
execute if score #is_furnace {namespace}.data matches 1 if score #rotation {namespace}.data matches 180 run setblock ~ ~ ~ furnace[facing=south] replace
execute if score #is_furnace {namespace}.data matches 1 if score #rotation {namespace}.data matches 270 run setblock ~ ~ ~ furnace[facing=west] replace

# Apply data back to furnace
execute if score #is_furnace {namespace}.data matches 1 run data modify block ~ ~ ~ {{}} merge from storage {namespace}:main Block
""")
	

	# Setup multimeter stuff
	write_to_file(f"{functions}/utils/multimeter/right_click/main.mcfunction", f"""
# Look at where player is looking at and stop when found a block
execute anchored eyes positioned ^ ^ ^.2 run function {namespace}:utils/multimeter/right_click/raycast
""")
	write_to_file(f"{functions}/utils/multimeter/right_click/raycast.mcfunction", f"""
# Stop case when raycast hits a block that is solid
execute unless block ~ ~ ~ #{namespace}:non_solid run function {namespace}:utils/multimeter/right_click/stop_case

# Continue raycast until it hits a block that is solid or the max distance is reached
execute if entity @s[distance=..5] if block ~ ~ ~ #{namespace}:non_solid positioned ^ ^ ^.2 run function {namespace}:utils/multimeter/right_click/raycast
""")
	write_to_file(f"{functions}/utils/multimeter/right_click/stop_case.mcfunction", f"""
# Tellraw Energy Display
tag @s add {namespace}.temp
execute as @e[scores={{energy.max_storage=1..}},limit=1,sort=nearest,distance=..1.5] run tellraw @a[tag={namespace}.temp] [{{"text":"Energy stored: ","italic":false,"color":"aqua"}},{{"score":{{"name":"@s","objective":"energy.storage"}},"italic":false,"color":"yellow"}},{{"text":"/"}},{{"score":{{"name":"@s","objective":"energy.max_storage"}},"italic":false,"color":"yellow"}},{{"text":" kJ\nChange Rate: "}},{{"score":{{"name":"@s","objective":"energy.change_rate"}},"italic":false,"color":"yellow"}},{{"text":" kW"}}]
tag @s remove {namespace}.temp
""")
	write_to_file(f"{functions}/utils/multimeter/passive/main.mcfunction", f"""
# Stop case when raycast hits a block that is solid
execute unless block ~ ~ ~ #{namespace}:non_solid run function {namespace}:utils/multimeter/passive/stop_case

# Continue raycast until it hits a block that is solid or the max distance is reached
execute if entity @s[distance=..5] if block ~ ~ ~ #{namespace}:non_solid positioned ^ ^ ^.5 run function {namespace}:utils/multimeter/passive/main
""")
	write_to_file(f"{functions}/utils/multimeter/passive/stop_case.mcfunction", f"""
# Execute at the block found the function
tag @s add {namespace}.temp
execute as @e[scores={{energy.max_storage=1..}},limit=1,sort=nearest,distance=..1.5] at @s align xyz run function {namespace}:utils/multimeter/passive/found_entity
tag @s remove {namespace}.temp
""")
	write_to_file(f"{functions}/utils/multimeter/passive/found_entity.mcfunction", f"""
# Summon glowing snowball on block
execute unless block ~ ~ ~ #{namespace}:non_solid run summon snowball ~.5 ~.3 ~.5 {{NoGravity:1b,Silent:1b,Glowing:1b,Tags:["{namespace}.multimeter_marker"]}}

# Title to the player
title @a[tag={namespace}.temp] actionbar [{{"text":"Energy stored: ","italic":false,"color":"aqua"}},{{"score":{{"name":"@s","objective":"energy.storage"}},"italic":false,"color":"yellow"}},{{"text":"/"}},{{"score":{{"name":"@s","objective":"energy.max_storage"}},"italic":false,"color":"yellow"}},{{"text":" kJ"}},{{"text":"  |  ","color":"yellow"}},{{"text":"Change Rate: "}},{{"score":{{"name":"@s","objective":"energy.change_rate"}},"italic":false,"color":"yellow"}},{{"text":" kW"}}]

# Remove the snowball by schedule function
schedule function {namespace}:utils/multimeter/passive/remove_markers 1t replace
""")
	write_to_file(f"{functions}/utils/multimeter/passive/remove_markers.mcfunction", f"""
# Score initialization and kill snowball entities alive for more than 5 ticks
scoreboard players set #success {namespace}.data 0
kill @e[type=snowball,tag={namespace}.multimeter_marker,scores={{{namespace}.private=5..}}]

# Increase private score by 1
execute store success score #success {namespace}.data run scoreboard players add @e[type=snowball,tag={namespace}.multimeter_marker] {namespace}.private 1

# Run again schedule if there are remaining snowballs
execute if score #success {namespace}.data matches 1 run schedule function {namespace}:utils/multimeter/passive/remove_markers 1t replace
""")


	# Setup first_join advancement
	json_content: dict = {"criteria":{"requirement":{"trigger":"minecraft:tick"}},"requirements":[["requirement"]],"rewards":{"function":f"{namespace}:advancements/first_join"}}
	write_to_file(f"{build_datapack}/data/{namespace}/advancement/first_join.json", super_json_dump(json_content, max_level = -1))
	write_to_file(f"{functions}/advancements/first_join.mcfunction", f"""
execute unless score #{namespace}.loaded load.status matches 1 run advancement revoke @s only {namespace}:first_join
execute if score #{namespace}.loaded load.status matches 1 run loot give @s loot {namespace}:i/manual
""")
	

	# Setup inventory_changed advancement
	json_content: dict = {"criteria":{"requirement":{"trigger":"minecraft:inventory_changed"}},"requirements":[["requirement"]],"rewards":{"function":f"{namespace}:advancements/inventory_changed"}}
	write_to_file(f"{build_datapack}/data/{namespace}/advancement/inventory_changed.json", super_json_dump(json_content, max_level = -1))
	write_to_file(f"{functions}/advancements/inventory_changed.mcfunction", f"""
# Revoke advancement
advancement revoke @s only {namespace}:inventory_changed

# Get multimeter state tag if holding multimeter in offhand
tag @s remove {namespace}.state.multimeter
execute if items entity @s weapon.offhand *[custom_data~{{"{namespace}":{{"multimeter":true}}}}] run tag @s add {namespace}.state.multimeter
""")


	# Private score
	write_to_versioned_file(config, "load/confirm_load", f"scoreboard objectives add {namespace}.private dummy\n", prepend = True)


	return

