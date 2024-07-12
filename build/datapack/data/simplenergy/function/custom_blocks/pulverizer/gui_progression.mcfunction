
#> simplenergy:custom_blocks/pulverizer/gui_progression
#
# @within	simplenergy:custom_blocks/pulverizer/gui_passive_slot {"index":$(index),"slot":$(slot)}
#			simplenergy:custom_blocks/pulverizer/reset_progress {"index":$(index),"slot":$(slot)}
#

$execute if score #progression simplenergy.data matches ..0 run item replace block ~ ~ ~ container.$(slot) with cobblestone[custom_model_data=2012978,hide_tooltip={},custom_data={"common_signals":{"temp":true}}]
$execute if score #progression simplenergy.data matches 1..12 run item replace block ~ ~ ~ container.$(slot) with cobblestone[custom_model_data=2012977,hide_tooltip={},custom_data={"common_signals":{"temp":true}}]
$execute if score #progression simplenergy.data matches 13..25 run item replace block ~ ~ ~ container.$(slot) with cobblestone[custom_model_data=2012976,hide_tooltip={},custom_data={"common_signals":{"temp":true}}]
$execute if score #progression simplenergy.data matches 26..39 run item replace block ~ ~ ~ container.$(slot) with cobblestone[custom_model_data=2012975,hide_tooltip={},custom_data={"common_signals":{"temp":true}}]
$execute if score #progression simplenergy.data matches 40..52 run item replace block ~ ~ ~ container.$(slot) with cobblestone[custom_model_data=2012974,hide_tooltip={},custom_data={"common_signals":{"temp":true}}]
$execute if score #progression simplenergy.data matches 53..65 run item replace block ~ ~ ~ container.$(slot) with cobblestone[custom_model_data=2012973,hide_tooltip={},custom_data={"common_signals":{"temp":true}}]
$execute if score #progression simplenergy.data matches 66..79 run item replace block ~ ~ ~ container.$(slot) with cobblestone[custom_model_data=2012972,hide_tooltip={},custom_data={"common_signals":{"temp":true}}]
$execute if score #progression simplenergy.data matches 80..92 run item replace block ~ ~ ~ container.$(slot) with cobblestone[custom_model_data=2012971,hide_tooltip={},custom_data={"common_signals":{"temp":true}}]
$execute if score #progression simplenergy.data matches 93..105 run item replace block ~ ~ ~ container.$(slot) with cobblestone[custom_model_data=2012970,hide_tooltip={},custom_data={"common_signals":{"temp":true}}]
$execute if score #progression simplenergy.data matches 106..119 run item replace block ~ ~ ~ container.$(slot) with cobblestone[custom_model_data=2012969,hide_tooltip={},custom_data={"common_signals":{"temp":true}}]
$execute if score #progression simplenergy.data matches 120..132 run item replace block ~ ~ ~ container.$(slot) with cobblestone[custom_model_data=2012968,hide_tooltip={},custom_data={"common_signals":{"temp":true}}]
$execute if score #progression simplenergy.data matches 133..145 run item replace block ~ ~ ~ container.$(slot) with cobblestone[custom_model_data=2012967,hide_tooltip={},custom_data={"common_signals":{"temp":true}}]
$execute if score #progression simplenergy.data matches 146..159 run item replace block ~ ~ ~ container.$(slot) with cobblestone[custom_model_data=2012966,hide_tooltip={},custom_data={"common_signals":{"temp":true}}]
$execute if score #progression simplenergy.data matches 160..172 run item replace block ~ ~ ~ container.$(slot) with cobblestone[custom_model_data=2012965,hide_tooltip={},custom_data={"common_signals":{"temp":true}}]
$execute if score #progression simplenergy.data matches 173..185 run item replace block ~ ~ ~ container.$(slot) with cobblestone[custom_model_data=2012964,hide_tooltip={},custom_data={"common_signals":{"temp":true}}]
$execute if score #progression simplenergy.data matches 186..199 run item replace block ~ ~ ~ container.$(slot) with cobblestone[custom_model_data=2012963,hide_tooltip={},custom_data={"common_signals":{"temp":true}}]
$execute if score #progression simplenergy.data matches 200.. run item replace block ~ ~ ~ container.$(slot) with cobblestone[custom_model_data=2012962,hide_tooltip={},custom_data={"common_signals":{"temp":true}}]

