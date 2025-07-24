
#> simplenergy:custom_blocks/simplunium_block/destroy
#
# @executed	as @e[type=item_display,tag=...,predicate=!simplenergy:check_vanilla_blocks] & at @s
#
# @within	simplenergy:custom_blocks/_groups/minecraft_iron_block
#

# Replace the item with the custom one
execute as @n[type=item,nbt={Item:{id:"minecraft:iron_block"}},distance=..1] run function simplenergy:custom_blocks/simplunium_block/replace_item

# Decrease count scores
scoreboard players remove #total_custom_blocks simplenergy.data 1
scoreboard players remove #total_vanilla_iron_block simplenergy.data 1
scoreboard players remove #total_simplunium_block simplenergy.data 1

# Kill the custom block entity
kill @s

