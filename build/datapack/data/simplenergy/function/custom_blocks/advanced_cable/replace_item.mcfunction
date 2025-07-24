
#> simplenergy:custom_blocks/advanced_cable/replace_item
#
# @executed	as @n[type=item,nbt={Item:{id:"minecraft:player_head"}},distance=..1]
#
# @within	simplenergy:custom_blocks/advanced_cable/destroy [ as @n[type=item,nbt={Item:{id:"minecraft:player_head"}},distance=..1] ]
#

data modify entity @s Item.components set from storage simplenergy:items all.advanced_cable.components
data modify entity @s Item.id set from storage simplenergy:items all.advanced_cable.id

