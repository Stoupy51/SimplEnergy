
advancement revoke @s only simplenergy:inventory_changed

#Pre-inventory check
clear @s #simplenergy:texture_item{simplenergy:{texture_item:1b}}

#Storage define
data modify storage simplenergy:inventory all set from entity @s Inventory

#Inventory conditions
tag @s remove simplenergy.state.multimeter
execute if data storage simplenergy:inventory all[{Slot:-106b}].tag.simplenergy.multimeter run tag @s add simplenergy.state.multimeter

#Memory dump
data remove storage simplenergy:inventory all
