
#> simplenergy:custom_blocks/furnace_generator/replace_item
#
# @executed	as @n[type=item,nbt={Item:{id:"minecraft:furnace"}},distance=..1]
#
# @within	simplenergy:custom_blocks/furnace_generator/destroy [ as @n[type=item,nbt={Item:{id:"minecraft:furnace"}},distance=..1] ]
#

# Replace the item with the custom one
data modify entity @s Item.components set from storage simplenergy:items all.furnace_generator.components
data modify entity @s Item.id set from storage simplenergy:items all.furnace_generator.id

