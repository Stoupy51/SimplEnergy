
#> simplenergy:utils/passive_offhand
#
# @executed	as @a[tag=!...] & at @s
#
# @within	simplenergy:v2.0.15/tick_2 [ as @a[tag=!...] & at @s ]
#

# Copy offhand
data modify storage simplenergy:main OffhandTag set from entity @s equipment.offhand.components."minecraft:custom_data"

# Switch case
execute if data storage simplenergy:main OffhandTag.simplenergy.multimeter anchored eyes positioned ^ ^ ^.2 run function simplenergy:utils/multimeter/passive/main
execute if data storage simplenergy:main OffhandTag.simplenergy.battery_switcher anchored eyes positioned ^ ^ ^.2 run function simplenergy:utils/battery_switcher/passive/pre_raycast

# Memory clean up
data remove storage simplenergy:main OffhandTag

