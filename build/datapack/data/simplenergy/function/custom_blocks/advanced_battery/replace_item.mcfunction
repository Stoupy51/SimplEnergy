
#> simplenergy:custom_blocks/advanced_battery/replace_item
#
# @executed	as @n[type=item,nbt={Item:{id:"minecraft:gold_block"}},distance=..1]
#
# @within	simplenergy:custom_blocks/advanced_battery/destroy [ as @n[type=item,nbt={Item:{id:"minecraft:gold_block"}},distance=..1] ]
#

# Replace the item with the custom one
data modify entity @s Item.components set from storage simplenergy:items all.advanced_battery.components
data modify entity @s Item.id set from storage simplenergy:items all.advanced_battery.id

# Keep energy
function simplenergy:utils/keep_energy

