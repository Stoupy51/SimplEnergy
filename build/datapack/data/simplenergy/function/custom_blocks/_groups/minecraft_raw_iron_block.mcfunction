
#> simplenergy:custom_blocks/_groups/minecraft_raw_iron_block
#
# @executed	as @e[type=item_display,tag=...,predicate=!simplenergy:check_vanilla_blocks] & at @s
#
# @within	simplenergy:custom_blocks/destroy
#

execute if score #total_raw_simplunium_block simplenergy.data matches 1.. if entity @s[tag=simplenergy.raw_simplunium_block] run function simplenergy:custom_blocks/raw_simplunium_block/destroy

