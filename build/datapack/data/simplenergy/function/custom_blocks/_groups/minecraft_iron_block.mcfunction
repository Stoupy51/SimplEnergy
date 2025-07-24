
#> simplenergy:custom_blocks/_groups/minecraft_iron_block
#
# @executed	as @e[type=item_display,tag=...,predicate=!simplenergy:check_vanilla_blocks] & at @s
#
# @within	simplenergy:custom_blocks/destroy
#

execute if score #total_simplunium_block simplenergy.data matches 1.. if entity @s[tag=simplenergy.simplunium_block] run function simplenergy:custom_blocks/simplunium_block/destroy
execute if score #total_machine_block simplenergy.data matches 1.. if entity @s[tag=simplenergy.machine_block] run function simplenergy:custom_blocks/machine_block/destroy
execute if score #total_elite_battery simplenergy.data matches 1.. if entity @s[tag=simplenergy.elite_battery] run function simplenergy:custom_blocks/elite_battery/destroy
execute if score #total_creative_battery simplenergy.data matches 1.. if entity @s[tag=simplenergy.creative_battery] run function simplenergy:custom_blocks/creative_battery/destroy
execute if score #total_heat_generator simplenergy.data matches 1.. if entity @s[tag=simplenergy.heat_generator] run function simplenergy:custom_blocks/heat_generator/destroy
execute if score #total_elevator simplenergy.data matches 1.. if entity @s[tag=simplenergy.elevator] run function simplenergy:custom_blocks/elevator/destroy

