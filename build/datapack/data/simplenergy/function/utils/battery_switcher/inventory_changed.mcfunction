
#> simplenergy:utils/battery_switcher/inventory_changed
#
# @executed	as the player & at current position
#
# @within	simplenergy:advancements/inventory_changed
#

# Copy inventory to storage
data modify storage simplenergy:main Inventory set from entity @s Inventory

# Start inventory loop
function simplenergy:utils/battery_switcher/loop with storage simplenergy:main Inventory[0]

