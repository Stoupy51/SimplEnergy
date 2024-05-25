
#> simplenergy:custom_blocks/deepslate_simplunium_ore/destroy
#
# @within	simplenergy:custom_blocks/_groups/minecraft_polished_deepslate
#

# Replace the item with the custom one
execute as @e[type=item,nbt={Item:{id:"minecraft:polished_deepslate"}},limit=1,sort=nearest,distance=..1] run function simplenergy:custom_blocks/deepslate_simplunium_ore/replace_item

# Kill the custom block entity
kill @s

