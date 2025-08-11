
#> simplenergy:custom_blocks/_groups/minecraft_waxed_copper_block
#
# @executed	as @e[type=item_display,tag=...,predicate=!simplenergy:check_vanilla_blocks] & at @s
#
# @within	simplenergy:custom_blocks/destroy
#

execute if score #total_simple_battery simplenergy.data matches 1.. if entity @s[tag=simplenergy.simple_battery] run function simplenergy:custom_blocks/simple_battery/destroy

