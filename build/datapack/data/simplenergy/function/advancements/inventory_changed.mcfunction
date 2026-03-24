
#> simplenergy:advancements/inventory_changed
#
# @executed	as the player & at current position
#
# @within	advancement simplenergy:technical/inventory_changed
#

# Revoke advancement
advancement revoke @s only simplenergy:technical/inventory_changed
tag @s remove simplenergy.offhand

# Get offhand tag if holding multimeter in offhand
execute if items entity @s weapon.offhand *[custom_data~{"simplenergy":{"multimeter":true}}] run tag @s add simplenergy.offhand

# Get offhand tag if holding battery switcher in offhand
execute if items entity @s weapon.offhand *[custom_data~{"simplenergy":{"battery_switcher":true}}] run tag @s add simplenergy.offhand

# For loop for each item in inventory
execute if items entity @s container.* *[custom_data~{"simplenergy":{"battery_switcher":true}}] run function simplenergy:utils/battery_switcher/inventory_changed

