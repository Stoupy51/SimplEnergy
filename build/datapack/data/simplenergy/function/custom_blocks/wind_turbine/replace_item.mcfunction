
#> simplenergy:custom_blocks/wind_turbine/replace_item
#
# @executed	as @n[type=item,nbt={Item:{id:"minecraft:iron_trapdoor"}},distance=..1]
#
# @within	simplenergy:custom_blocks/wind_turbine/destroy [ as @n[type=item,nbt={Item:{id:"minecraft:iron_trapdoor"}},distance=..1] ]
#

# Replace the item with the custom one
data modify entity @s Item.components set from storage simplenergy:items all.wind_turbine.components
data modify entity @s Item.id set from storage simplenergy:items all.wind_turbine.id

