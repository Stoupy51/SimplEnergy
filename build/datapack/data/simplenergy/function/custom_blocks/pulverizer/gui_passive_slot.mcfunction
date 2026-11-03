
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

$scoreboard players operation #progression simplenergy.data = @s simplenergy.pulverizer_progress_$(index)
$execute if items block ~ ~ ~ container.$(slot) *[!custom_data~{"common_signals":{"temp":true}}] run function simplenergy:custom_blocks/pulverizer/handle_item_on_gui {"index":$(index),"slot":$(slot)}

# Set item gui (blocked if not unlocked, progression otherwise)
$execute unless entity @s[tag=simplenergy.pulverizer_unlocked_$(index)] run item replace block ~ ~ ~ container.$(slot) with minecraft:recovery_compass[item_model="simplenergy:gui/progress_blocked",custom_data={"common_signals":{"temp":true}},item_name={"translate":"simplenergy.blocked","fallback":"Blocked","italic":false},lore=[{"translate":"simplenergy.place_a_slot_unlocker_to_unlock","fallback":"Place a Slot Unlocker to unlock","color":"gray","italic":false}]]
$execute if entity @s[tag=simplenergy.pulverizer_unlocked_$(index)] run function simplenergy:custom_blocks/pulverizer/gui_progression {"index":$(index),"slot":$(slot)}

