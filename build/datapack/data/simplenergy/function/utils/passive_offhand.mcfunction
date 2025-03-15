
#> simplenergy:utils/passive_offhand
#
# @within	simplenergy:v2.0.2/tick_2
#

# Copy offhand
data modify storage simplenergy:main OffhandTag set from entity @s Inventory[{Slot:-106b}].components."minecraft:custom_data"

# Switch case
execute if data storage simplenergy:main OffhandTag.simplenergy.multimeter anchored eyes positioned ^ ^ ^.2 run function simplenergy:utils/multimeter/passive/main
execute if data storage simplenergy:main OffhandTag.simplenergy.battery_switcher anchored eyes positioned ^ ^ ^.2 run function simplenergy:utils/battery_switcher/passive/pre_raycast

# Memory clean up
data remove storage simplenergy:main OffhandTag

