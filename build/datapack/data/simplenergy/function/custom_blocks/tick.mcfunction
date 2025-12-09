
#> simplenergy:custom_blocks/tick
#
# @executed	as @e[tag=simplenergy.tick] & at @s
#
# @within	simplenergy:v2.0.15/tick [ as @e[tag=simplenergy.tick] & at @s ]
#

execute if entity @s[tag=simplenergy.electric_smelter] run function simplenergy:custom_blocks/electric_smelter/tick
execute if entity @s[tag=simplenergy.electric_furnace] run function simplenergy:custom_blocks/electric_furnace/tick
execute if entity @s[tag=simplenergy.electric_brewing_stand] run function simplenergy:custom_blocks/electric_brewing_stand/tick
execute if entity @s[tag=simplenergy.elevator] run function simplenergy:custom_blocks/elevator/tick
execute if entity @s[tag=simplenergy.pulverizer] run function simplenergy:custom_blocks/pulverizer/tick

