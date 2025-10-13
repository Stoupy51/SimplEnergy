
#> simplenergy:custom_blocks/cauldron_generator/replace_item
#
# @executed	as @n[type=item,nbt={Item:{id:"minecraft:cauldron"}},distance=..1]
#
# @within	simplenergy:custom_blocks/cauldron_generator/destroy [ as @n[type=item,nbt={Item:{id:"minecraft:cauldron"}},distance=..1] ]
#

# Replace the item with the custom one
data modify entity @s Item.components set from storage simplenergy:items all.cauldron_generator.components
data modify entity @s Item.id set from storage simplenergy:items all.cauldron_generator.id

