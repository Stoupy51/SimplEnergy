
#> simplenergy:custom_blocks/_groups/minecraft_polished_deepslate
#
# @executed	as @e[type=item_display,tag=...,predicate=!simplenergy:check_vanilla_blocks] & at @s
#
# @within	simplenergy:custom_blocks/destroy
#

execute if score #total_simplunium_ore simplenergy.data matches 1.. if entity @s[tag=simplenergy.simplunium_ore] run function simplenergy:custom_blocks/simplunium_ore/destroy
execute if score #total_deepslate_simplunium_ore simplenergy.data matches 1.. if entity @s[tag=simplenergy.deepslate_simplunium_ore] run function simplenergy:custom_blocks/deepslate_simplunium_ore/destroy

