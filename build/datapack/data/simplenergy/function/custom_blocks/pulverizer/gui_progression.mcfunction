
#> simplenergy:custom_blocks/pulverizer/gui_progression
#
# @within	simplenergy:custom_blocks/pulverizer/gui_passive_slot {"index":$(index),"slot":$(slot)}
#			simplenergy:custom_blocks/pulverizer/reset_progress {"index":$(index),"slot":$(slot)}
#

$execute if score #progression simplenergy.data matches ..0 run item replace block ~ ~ ~ container.$(slot) with cobblestone[item_model="simplenergy:gui/progress_unblocked_00",hide_tooltip={},custom_data={"common_signals":{"temp":true}}]
$execute if score #progression simplenergy.data matches 1..12 run item replace block ~ ~ ~ container.$(slot) with cobblestone[item_model="simplenergy:gui/progress_unblocked_01",hide_tooltip={},custom_data={"common_signals":{"temp":true}}]
$execute if score #progression simplenergy.data matches 13..25 run item replace block ~ ~ ~ container.$(slot) with cobblestone[item_model="simplenergy:gui/progress_unblocked_02",hide_tooltip={},custom_data={"common_signals":{"temp":true}}]
$execute if score #progression simplenergy.data matches 26..39 run item replace block ~ ~ ~ container.$(slot) with cobblestone[item_model="simplenergy:gui/progress_unblocked_03",hide_tooltip={},custom_data={"common_signals":{"temp":true}}]
$execute if score #progression simplenergy.data matches 40..52 run item replace block ~ ~ ~ container.$(slot) with cobblestone[item_model="simplenergy:gui/progress_unblocked_04",hide_tooltip={},custom_data={"common_signals":{"temp":true}}]
$execute if score #progression simplenergy.data matches 53..65 run item replace block ~ ~ ~ container.$(slot) with cobblestone[item_model="simplenergy:gui/progress_unblocked_05",hide_tooltip={},custom_data={"common_signals":{"temp":true}}]
$execute if score #progression simplenergy.data matches 66..79 run item replace block ~ ~ ~ container.$(slot) with cobblestone[item_model="simplenergy:gui/progress_unblocked_06",hide_tooltip={},custom_data={"common_signals":{"temp":true}}]
$execute if score #progression simplenergy.data matches 80..92 run item replace block ~ ~ ~ container.$(slot) with cobblestone[item_model="simplenergy:gui/progress_unblocked_07",hide_tooltip={},custom_data={"common_signals":{"temp":true}}]
$execute if score #progression simplenergy.data matches 93..105 run item replace block ~ ~ ~ container.$(slot) with cobblestone[item_model="simplenergy:gui/progress_unblocked_08",hide_tooltip={},custom_data={"common_signals":{"temp":true}}]
$execute if score #progression simplenergy.data matches 106..119 run item replace block ~ ~ ~ container.$(slot) with cobblestone[item_model="simplenergy:gui/progress_unblocked_09",hide_tooltip={},custom_data={"common_signals":{"temp":true}}]
$execute if score #progression simplenergy.data matches 120..132 run item replace block ~ ~ ~ container.$(slot) with cobblestone[item_model="simplenergy:gui/progress_unblocked_10",hide_tooltip={},custom_data={"common_signals":{"temp":true}}]
$execute if score #progression simplenergy.data matches 133..145 run item replace block ~ ~ ~ container.$(slot) with cobblestone[item_model="simplenergy:gui/progress_unblocked_11",hide_tooltip={},custom_data={"common_signals":{"temp":true}}]
$execute if score #progression simplenergy.data matches 146..159 run item replace block ~ ~ ~ container.$(slot) with cobblestone[item_model="simplenergy:gui/progress_unblocked_12",hide_tooltip={},custom_data={"common_signals":{"temp":true}}]
$execute if score #progression simplenergy.data matches 160..172 run item replace block ~ ~ ~ container.$(slot) with cobblestone[item_model="simplenergy:gui/progress_unblocked_13",hide_tooltip={},custom_data={"common_signals":{"temp":true}}]
$execute if score #progression simplenergy.data matches 173..185 run item replace block ~ ~ ~ container.$(slot) with cobblestone[item_model="simplenergy:gui/progress_unblocked_14",hide_tooltip={},custom_data={"common_signals":{"temp":true}}]
$execute if score #progression simplenergy.data matches 186..199 run item replace block ~ ~ ~ container.$(slot) with cobblestone[item_model="simplenergy:gui/progress_unblocked_15",hide_tooltip={},custom_data={"common_signals":{"temp":true}}]
$execute if score #progression simplenergy.data matches 200.. run item replace block ~ ~ ~ container.$(slot) with cobblestone[item_model="simplenergy:gui/progress_unblocked_16",hide_tooltip={},custom_data={"common_signals":{"temp":true}}]

