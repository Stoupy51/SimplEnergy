
#> simplenergy:advancements/inventory_changed_loop
#
# @executed	as the player & at current position
#
# @within	simplenergy:advancements/inventory_changed with storage simplenergy:main Inventory[0]
#			simplenergy:advancements/inventory_changed_loop with storage simplenergy:main Inventory[0]
#

# Get item in inventory and slot
data modify storage simplenergy:main Item set from storage simplenergy:main Inventory[0]
execute store result score #slot simplenergy.data run data get storage simplenergy:main Item.Slot

# If item is a battery switcher and not in offhand, set custom model data to default
$execute if score #slot simplenergy.data matches 0.. if data storage simplenergy:main Item.components."minecraft:custom_data".simplenergy.battery_switcher run item modify entity @s container.$(Slot) simplenergy:battery_switcher/default

# Remove element and go next
data remove storage simplenergy:main Inventory[0]
execute if data storage simplenergy:main Inventory[0] run function simplenergy:advancements/inventory_changed_loop with storage simplenergy:main Inventory[0]

