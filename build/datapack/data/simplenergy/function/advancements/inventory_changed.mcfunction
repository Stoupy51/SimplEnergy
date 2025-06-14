
#> simplenergy:advancements/inventory_changed
#
# @within	advancement simplenergy:inventory_changed
#

# Revoke advancement
advancement revoke @s only simplenergy:inventory_changed
tag @s remove simplenergy.offhand

# Get offhand tag if holding multimeter in offhand
execute if items entity @s weapon.offhand *[custom_data~{simplenergy:{multimeter:true}}] run tag @s add simplenergy.offhand

# Get offhand tag if holding battery switcher in offhand
execute if items entity @s weapon.offhand *[custom_data~{simplenergy:{battery_switcher:true}}] run tag @s add simplenergy.offhand

# For loop for each item in inventory
data modify storage simplenergy:main Inventory set from entity @s Inventory
function simplenergy:advancements/inventory_changed_loop with storage simplenergy:main Inventory[0]

