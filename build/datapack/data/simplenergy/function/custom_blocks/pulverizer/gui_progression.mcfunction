
#> simplenergy:custom_blocks/pulverizer/gui_progression
#
# @executed	as @e[tag=simplenergy.tick] & at @s
#
# @within	simplenergy:custom_blocks/pulverizer/gui_passive_slot {"index":$(index),"slot":$(slot)}
#			simplenergy:custom_blocks/pulverizer/reset_progress {"index":$(index),"slot":$(slot)}
#
# @args		slot (int)
#

$execute if score #progression simplenergy.data matches ..0 run item replace block ~ ~ ~ container.$(slot) with minecraft:command_block[item_model="simplenergy:gui/progress_unblocked_16",tooltip_display={"hide_tooltip":true},custom_data={"common_signals":{"temp":true}}]
$execute if score #progression simplenergy.data matches 1..12 run item replace block ~ ~ ~ container.$(slot) with minecraft:command_block[item_model="simplenergy:gui/progress_unblocked_03",tooltip_display={"hide_tooltip":true},custom_data={"common_signals":{"temp":true}}]
$execute if score #progression simplenergy.data matches 13..25 run item replace block ~ ~ ~ container.$(slot) with minecraft:command_block[item_model="simplenergy:gui/progress_unblocked_13",tooltip_display={"hide_tooltip":true},custom_data={"common_signals":{"temp":true}}]
$execute if score #progression simplenergy.data matches 26..39 run item replace block ~ ~ ~ container.$(slot) with minecraft:command_block[item_model="simplenergy:gui/progress_unblocked_06",tooltip_display={"hide_tooltip":true},custom_data={"common_signals":{"temp":true}}]
$execute if score #progression simplenergy.data matches 40..52 run item replace block ~ ~ ~ container.$(slot) with minecraft:command_block[item_model="simplenergy:gui/progress_unblocked_14",tooltip_display={"hide_tooltip":true},custom_data={"common_signals":{"temp":true}}]
$execute if score #progression simplenergy.data matches 53..65 run item replace block ~ ~ ~ container.$(slot) with minecraft:command_block[item_model="simplenergy:gui/progress_unblocked_02",tooltip_display={"hide_tooltip":true},custom_data={"common_signals":{"temp":true}}]
$execute if score #progression simplenergy.data matches 66..79 run item replace block ~ ~ ~ container.$(slot) with minecraft:command_block[item_model="simplenergy:gui/progress_unblocked_09",tooltip_display={"hide_tooltip":true},custom_data={"common_signals":{"temp":true}}]
$execute if score #progression simplenergy.data matches 80..92 run item replace block ~ ~ ~ container.$(slot) with minecraft:command_block[item_model="simplenergy:gui/progress_unblocked_04",tooltip_display={"hide_tooltip":true},custom_data={"common_signals":{"temp":true}}]
$execute if score #progression simplenergy.data matches 93..105 run item replace block ~ ~ ~ container.$(slot) with minecraft:command_block[item_model="simplenergy:gui/progress_unblocked_15",tooltip_display={"hide_tooltip":true},custom_data={"common_signals":{"temp":true}}]
$execute if score #progression simplenergy.data matches 106..119 run item replace block ~ ~ ~ container.$(slot) with minecraft:command_block[item_model="simplenergy:gui/progress_unblocked_05",tooltip_display={"hide_tooltip":true},custom_data={"common_signals":{"temp":true}}]
$execute if score #progression simplenergy.data matches 120..132 run item replace block ~ ~ ~ container.$(slot) with minecraft:command_block[item_model="simplenergy:gui/progress_unblocked_01",tooltip_display={"hide_tooltip":true},custom_data={"common_signals":{"temp":true}}]
$execute if score #progression simplenergy.data matches 133..145 run item replace block ~ ~ ~ container.$(slot) with minecraft:command_block[item_model="simplenergy:gui/progress_unblocked_07",tooltip_display={"hide_tooltip":true},custom_data={"common_signals":{"temp":true}}]
$execute if score #progression simplenergy.data matches 146..159 run item replace block ~ ~ ~ container.$(slot) with minecraft:command_block[item_model="simplenergy:gui/progress_unblocked_00",tooltip_display={"hide_tooltip":true},custom_data={"common_signals":{"temp":true}}]
$execute if score #progression simplenergy.data matches 160..172 run item replace block ~ ~ ~ container.$(slot) with minecraft:command_block[item_model="simplenergy:gui/progress_unblocked_08",tooltip_display={"hide_tooltip":true},custom_data={"common_signals":{"temp":true}}]
$execute if score #progression simplenergy.data matches 173..185 run item replace block ~ ~ ~ container.$(slot) with minecraft:command_block[item_model="simplenergy:gui/progress_unblocked_12",tooltip_display={"hide_tooltip":true},custom_data={"common_signals":{"temp":true}}]
$execute if score #progression simplenergy.data matches 186..199 run item replace block ~ ~ ~ container.$(slot) with minecraft:command_block[item_model="simplenergy:gui/progress_unblocked_10",tooltip_display={"hide_tooltip":true},custom_data={"common_signals":{"temp":true}}]
$execute if score #progression simplenergy.data matches 200.. run item replace block ~ ~ ~ container.$(slot) with minecraft:command_block[item_model="simplenergy:gui/progress_unblocked_11",tooltip_display={"hide_tooltip":true},custom_data={"common_signals":{"temp":true}}]

