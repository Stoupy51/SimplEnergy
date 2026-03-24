
#> simplenergy:custom_blocks/_groups/minecraft_conduit
#
# @executed	as @e[type=item_display,tag=...,predicate=!simplenergy:check_vanilla_blocks] & at @s
#
# @within	simplenergy:custom_blocks/destroy
#

execute if score #total_basic_item_cable simplenergy.data matches 1.. if entity @s[tag=simplenergy.basic_item_cable] run function simplenergy:custom_blocks/basic_item_cable/destroy

