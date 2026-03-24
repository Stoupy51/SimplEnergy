
#> simplenergy:custom_blocks/electric_furnace/replace_item
#
# @executed	as @n[type=item,nbt={Item:{id:"minecraft:furnace"}},distance=..1]
#
# @within	simplenergy:custom_blocks/electric_furnace/destroy [ as @n[type=item,nbt={Item:{id:"minecraft:furnace"}},distance=..1] ]
#

# Replace the item with the custom one
data modify entity @s Item.components set from storage simplenergy:items all.electric_furnace.components
data modify entity @s Item.id set from storage simplenergy:items all.electric_furnace.id

