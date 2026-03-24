
#> simplenergy:custom_blocks/redstone_generator/replace_item
#
# @executed	as @n[type=item,nbt={Item:{id:"minecraft:furnace"}},distance=..1]
#
# @within	simplenergy:custom_blocks/redstone_generator/destroy [ as @n[type=item,nbt={Item:{id:"minecraft:furnace"}},distance=..1] ]
#

# Replace the item with the custom one
data modify entity @s Item.components set from storage simplenergy:items all.redstone_generator.components
data modify entity @s Item.id set from storage simplenergy:items all.redstone_generator.id

