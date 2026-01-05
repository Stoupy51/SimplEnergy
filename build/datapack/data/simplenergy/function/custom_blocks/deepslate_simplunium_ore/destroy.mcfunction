
#> simplenergy:custom_blocks/deepslate_simplunium_ore/destroy
#
# @executed	as @e[type=item_display,tag=...,predicate=!simplenergy:check_vanilla_blocks] & at @s
#
# @within	simplenergy:custom_blocks/_groups/minecraft_polished_deepslate
#

# Replace the item with the custom one
execute as @n[type=item,nbt={Item:{id:"minecraft:polished_deepslate"}},distance=..1] run function simplenergy:custom_blocks/deepslate_simplunium_ore/replace_item

# Decrease count scores
scoreboard players remove #total_custom_blocks simplenergy.data 1
scoreboard players remove #total_vanilla_polished_deepslate simplenergy.data 1
scoreboard players remove #total_deepslate_simplunium_ore simplenergy.data 1

# Kill the custom block entity
kill @s

