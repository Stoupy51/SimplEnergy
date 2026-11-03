
#> simplenergy:custom_blocks/pulverizer/handle_item_on_gui
#
# @executed	as @e[tag=simplenergy.tick] & at @s
#
# @within	simplenergy:custom_blocks/pulverizer/tick {"index":0,"slot":26}
#			simplenergy:custom_blocks/pulverizer/gui_passive_slot {"index":$(index),"slot":$(slot)}
#
# @args		slot (int)
#			index (int)
#

$data modify storage simplenergy:temp intruder set from block ~ ~ ~ Items[{Slot:$(slot)b}]

# If slot is unlocked or it's not a Slot Unlocker, drop the item
scoreboard players set #drop_item simplenergy.data 0
$execute if entity @s[tag=simplenergy.pulverizer_unlocked_$(index)] run scoreboard players set #drop_item simplenergy.data 1
execute if score #drop_item simplenergy.data matches 0 unless data storage simplenergy:temp intruder.components."minecraft:custom_data".simplenergy.slot_unlocker run scoreboard players set #drop_item simplenergy.data 1
execute if score #drop_item simplenergy.data matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:stone",count:1b,components:{"minecraft:custom_data":{"temp":true}}}}
execute if score #drop_item simplenergy.data matches 1 run return run data modify entity @n[type=item,nbt={Item:{components:{"minecraft:custom_data":{"temp":true}}}}] Item set from storage simplenergy:temp intruder

# Else unlock the slot, playsound, and drop the item with count decreased by 1
playsound block.anvil.destroy block @a[distance=..12]
clear @a *[minecraft:custom_data={"common_signals":{"temp":true}}]
$tag @s add simplenergy.pulverizer_unlocked_$(index)
execute store result score #count simplenergy.data run data get storage simplenergy:temp intruder.count
scoreboard players remove #count simplenergy.data 1
execute if score #count simplenergy.data matches 1.. store result storage simplenergy:temp intruder.count byte 1 run scoreboard players get #count simplenergy.data
execute if score #count simplenergy.data matches 1.. run summon item ~ ~ ~ {Item:{id:"minecraft:stone",count:1b,components:{"minecraft:custom_data":{"temp":true}}}}
execute if score #count simplenergy.data matches 1.. run data modify entity @n[type=item,nbt={Item:{components:{"minecraft:custom_data":{"temp":true}}}}] Item set from storage simplenergy:temp intruder

