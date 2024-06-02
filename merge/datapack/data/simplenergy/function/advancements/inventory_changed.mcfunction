
# Revoke advancement
advancement revoke @s only simplenergy:inventory_changed

# Copy inventory to storage for efficiency
data modify storage simplenergy:inventory all set from entity @s Inventory

# Inventory conditions
tag @s remove simplenergy.state.multimeter
execute if data storage simplenergy:inventory all[{Slot:-106b}].components."minecraft:custom_data".simplenergy.multimeter run tag @s add simplenergy.state.multimeter

# Memory clean up
data remove storage simplenergy:inventory all

