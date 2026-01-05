
#> simplenergy:custom_blocks/pulverizer/gui_passive_slot
#
# @executed	as @e[tag=simplenergy.tick] & at @s
#
# @within	simplenergy:custom_blocks/pulverizer/gui_for_each_slot {"index":0,"slot":9}
#			simplenergy:custom_blocks/pulverizer/gui_for_each_slot {"index":1,"slot":10}
#			simplenergy:custom_blocks/pulverizer/gui_for_each_slot {"index":2,"slot":11}
#			simplenergy:custom_blocks/pulverizer/gui_for_each_slot {"index":3,"slot":12}
#			simplenergy:custom_blocks/pulverizer/gui_for_each_slot {"index":4,"slot":13}
#			simplenergy:custom_blocks/pulverizer/gui_for_each_slot {"index":5,"slot":14}
#			simplenergy:custom_blocks/pulverizer/gui_for_each_slot {"index":6,"slot":15}
#			simplenergy:custom_blocks/pulverizer/gui_for_each_slot {"index":7,"slot":16}
#
# @args		index (int)
#			slot (int)
#

# Get slot and progression, and the item
scoreboard players set #progression simplenergy.data 0
$data modify storage simplenergy:temp slot set from storage simplenergy:temp slots[$(index)]
execute store result score #progression simplenergy.data run data get storage simplenergy:temp slot.progression
$data modify storage simplenergy:temp intruder set from storage simplenergy:temp Items[{Slot:$(slot)b}]

# If item is not a GUI, launch function to handle it
$execute if data storage simplenergy:temp intruder unless data storage simplenergy:temp intruder.components."minecraft:custom_data".common_signals.temp run function simplenergy:custom_blocks/pulverizer/handle_item_on_gui {"index":$(index),"slot":$(slot)}

# Set item gui (blocked if not unlocked, progression otherwise)
$execute if data storage simplenergy:temp slot.blocked run item replace block ~ ~ ~ container.$(slot) with minecraft:command_block[item_model="simplenergy:gui/progress_blocked",custom_data={"common_signals":{"temp":true}},item_name={"translate": "simplenergy.blocked","italic":false},lore=[{"translate": "simplenergy.place_a_slot_unlocker_to_unlock","color":"gray","italic":false}]]
$execute unless data storage simplenergy:temp slot.blocked run function simplenergy:custom_blocks/pulverizer/gui_progression {"index":$(index),"slot":$(slot)}

