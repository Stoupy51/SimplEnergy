
#> simplenergy:custom_blocks/_groups/minecraft_cauldron
#
# @executed	as @e[type=item_display,tag=...,predicate=!simplenergy:check_vanilla_blocks] & at @s
#
# @within	simplenergy:custom_blocks/destroy
#

execute if score #total_cauldron_generator simplenergy.data matches 1.. if entity @s[tag=simplenergy.cauldron_generator] run function simplenergy:custom_blocks/cauldron_generator/destroy

