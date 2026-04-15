
#> simplenergy:utils/keep_energy
#
# @executed	as @n[type=item,nbt={Item:{id:"minecraft:waxed_copper_block"}},distance=..1]
#
# @within	simplenergy:custom_blocks/simple_battery/replace_item
#			simplenergy:custom_blocks/advanced_battery/replace_item
#			simplenergy:custom_blocks/elite_battery/replace_item
#			simplenergy:custom_blocks/creative_battery/replace_item
#

# Prepare input for the update_energy_lore function
data modify storage energy:temp list set value []
data modify storage energy:temp list append from entity @s Item
execute store result storage energy:temp list[0].components."minecraft:custom_data".energy.storage int 1 run scoreboard players get #storage simplenergy.data

# Call the update_energy_lore function
function simplenergy:calls/update_energy_lore/main

# Prevent stack with other batteries
execute store result storage energy:temp list[0].components."minecraft:custom_data".simplenergy.not_stackable int 1 run scoreboard players get #stack simplenergy.data
scoreboard players add #stack simplenergy.data 1

# Update the item
data modify entity @s Item.components set from storage energy:temp list[0].components

