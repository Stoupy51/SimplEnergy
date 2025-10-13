
#> simplenergy:custom_blocks/electric_brewing_stand/replace_item
#
# @executed	as @n[type=item,nbt={Item:{id:"minecraft:brewing_stand"}},distance=..1]
#
# @within	simplenergy:custom_blocks/electric_brewing_stand/destroy [ as @n[type=item,nbt={Item:{id:"minecraft:brewing_stand"}},distance=..1] ]
#

# Replace the item with the custom one
data modify entity @s Item.components set from storage simplenergy:items all.electric_brewing_stand.components
data modify entity @s Item.id set from storage simplenergy:items all.electric_brewing_stand.id

