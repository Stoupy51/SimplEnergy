
advancement revoke @s only simplenergy:inventory_changed

#Storage define
data modify storage simplenergy:main Inventory set from entity @s Inventory

#Inventory conditions
tag @s remove simplenergy.state.multimeter
execute if data storage simplenergy:main Inventory[{Slot:-106b}].tag.simplenergy.multimeter run tag @s add simplenergy.state.multimeter

#Memory dump
data remove storage simplenergy:main Inventory

