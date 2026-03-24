
#> simplenergy:custom_blocks/raw_simplunium_block/replace_item
#
# @executed	as @n[type=item,nbt={Item:{id:"minecraft:raw_iron_block"}},distance=..1]
#
# @within	simplenergy:custom_blocks/raw_simplunium_block/destroy [ as @n[type=item,nbt={Item:{id:"minecraft:raw_iron_block"}},distance=..1] ]
#

# Replace the item with the custom one
data modify entity @s Item.components set from storage simplenergy:items all.raw_simplunium_block.components
data modify entity @s Item.id set from storage simplenergy:items all.raw_simplunium_block.id

