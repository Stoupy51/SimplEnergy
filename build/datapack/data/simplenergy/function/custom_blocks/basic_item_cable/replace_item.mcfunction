
#> simplenergy:custom_blocks/basic_item_cable/replace_item
#
# @executed	as @n[type=item,nbt={Item:{id:"minecraft:conduit"}},distance=..1]
#
# @within	simplenergy:custom_blocks/basic_item_cable/destroy [ as @n[type=item,nbt={Item:{id:"minecraft:conduit"}},distance=..1] ]
#

# Replace the item with the custom one
data modify entity @s Item.components set from storage simplenergy:items all.basic_item_cable.components
data modify entity @s Item.id set from storage simplenergy:items all.basic_item_cable.id

