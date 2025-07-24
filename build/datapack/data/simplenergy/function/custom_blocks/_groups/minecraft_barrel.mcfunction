
#> simplenergy:custom_blocks/_groups/minecraft_barrel
#
# @executed	as @e[type=item_display,tag=...,predicate=!simplenergy:check_vanilla_blocks] & at @s
#
# @within	simplenergy:custom_blocks/destroy
#

execute if score #total_pulverizer simplenergy.data matches 1.. if entity @s[tag=simplenergy.pulverizer] run function simplenergy:custom_blocks/pulverizer/destroy

