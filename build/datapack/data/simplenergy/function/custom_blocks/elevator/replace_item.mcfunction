
#> simplenergy:custom_blocks/elevator/replace_item
#
# @executed	as @n[type=item,nbt={Item:{id:"minecraft:iron_block"}},distance=..1]
#
# @within	simplenergy:custom_blocks/elevator/destroy [ as @n[type=item,nbt={Item:{id:"minecraft:iron_block"}},distance=..1] ]
#

# Replace the item with the custom one
data modify entity @s Item.components set from storage simplenergy:items all.elevator.components
data modify entity @s Item.id set from storage simplenergy:items all.elevator.id

