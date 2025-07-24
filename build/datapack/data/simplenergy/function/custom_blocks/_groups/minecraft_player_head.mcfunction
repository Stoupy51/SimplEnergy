
#> simplenergy:custom_blocks/_groups/minecraft_player_head
#
# @executed	as @e[type=item_display,tag=...,predicate=!simplenergy:check_vanilla_blocks] & at @s
#
# @within	simplenergy:custom_blocks/destroy
#

execute if score #total_simple_cable simplenergy.data matches 1.. if entity @s[tag=simplenergy.simple_cable] run function simplenergy:custom_blocks/simple_cable/destroy
execute if score #total_advanced_cable simplenergy.data matches 1.. if entity @s[tag=simplenergy.advanced_cable] run function simplenergy:custom_blocks/advanced_cable/destroy
execute if score #total_elite_cable simplenergy.data matches 1.. if entity @s[tag=simplenergy.elite_cable] run function simplenergy:custom_blocks/elite_cable/destroy

