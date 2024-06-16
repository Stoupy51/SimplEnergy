
#> simplenergy:advancements/inventory_changed
#
# @within	advancement simplenergy:inventory_changed
#

# Revoke advancement
advancement revoke @s only simplenergy:inventory_changed

# Get multimeter state tag if holding multimeter in offhand
tag @s remove simplenergy.state.multimeter
execute if items entity @s weapon.offhand *[custom_data~{"simplenergy":{"multimeter":true}}] run tag @s add simplenergy.state.multimeter

