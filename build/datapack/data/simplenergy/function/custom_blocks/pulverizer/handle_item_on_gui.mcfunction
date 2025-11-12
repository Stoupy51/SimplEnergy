
#> simplenergy:custom_blocks/pulverizer/handle_item_on_gui
#
# @executed	as @e[tag=simplenergy.tick] & at @s
#
# @within	simplenergy:custom_blocks/pulverizer/tick {"index":26,"slot":26}
#			simplenergy:custom_blocks/pulverizer/gui_passive_slot {"index":$(index),"slot":$(slot)}
#
# @args		index (int)
#

# If slot is locked and it's not a Slot Unlocker, drop the item
scoreboard players set #drop_item simplenergy.data 0
execute unless data storage simplenergy:temp slot.blocked run scoreboard players set #drop_item simplenergy.data 1
execute if score #drop_item simplenergy.data matches 0 unless data storage simplenergy:temp intruder.components."minecraft:custom_data".simplenergy.slot_unlocker run scoreboard players set #drop_item simplenergy.data 1
execute if score #drop_item simplenergy.data matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:stone",count:1b,components:{"minecraft:custom_data":{"temp":true}}}}
execute if score #drop_item simplenergy.data matches 1 run data modify entity @n[type=item,nbt={Item:{components:{"minecraft:custom_data":{"temp":true}}}}] Item set from storage simplenergy:temp intruder

# If slot is locked and item didn't drop, unlock the slot, playsound, and drop the item with count decreased by 1
execute if score #drop_item simplenergy.data matches 0 if data storage simplenergy:temp slot.blocked run playsound block.anvil.destroy block @a[distance=..12]
execute if score #drop_item simplenergy.data matches 0 if data storage simplenergy:temp slot.blocked run clear @a *[minecraft:custom_data={"common_signals":{"temp":true}}]
$execute if score #drop_item simplenergy.data matches 0 if data storage simplenergy:temp slot.blocked run data remove storage simplenergy:temp slots[$(index)].blocked
execute if score #drop_item simplenergy.data matches 0 if data storage simplenergy:temp slot.blocked store result score #count simplenergy.data run data get storage simplenergy:temp intruder.count
execute if score #drop_item simplenergy.data matches 0 if data storage simplenergy:temp slot.blocked run scoreboard players remove #count simplenergy.data 1
execute if score #drop_item simplenergy.data matches 0 if data storage simplenergy:temp slot.blocked if score #count simplenergy.data matches 1.. store result storage simplenergy:temp intruder.count byte 1 run scoreboard players get #count simplenergy.data
execute if score #drop_item simplenergy.data matches 0 if data storage simplenergy:temp slot.blocked if score #count simplenergy.data matches 1.. run summon item ~ ~ ~ {Item:{id:"minecraft:stone",count:1b,components:{"minecraft:custom_data":{"temp":true}}}}
execute if score #drop_item simplenergy.data matches 0 if data storage simplenergy:temp slot.blocked if score #count simplenergy.data matches 1.. run data modify entity @n[type=item,nbt={Item:{components:{"minecraft:custom_data":{"temp":true}}}}] Item set from storage simplenergy:temp intruder

