
#> simplenergy:custom_blocks/_groups/minecraft_gold_block
#
# @executed	as @e[type=item_display,tag=...,predicate=!simplenergy:check_vanilla_blocks] & at @s
#
# @within	simplenergy:custom_blocks/destroy
#

execute if score #total_advanced_battery simplenergy.data matches 1.. if entity @s[tag=simplenergy.advanced_battery] run function simplenergy:custom_blocks/advanced_battery/destroy

