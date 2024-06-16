
#> simplenergy:custom_blocks/tick
#
# @within	simplenergy:v2.0.0/tick
#

execute if entity @s[tag=simplenergy.electric_smelter] run function simplenergy:custom_blocks/electric_smelter/tick
execute if entity @s[tag=simplenergy.electric_furnace] run function simplenergy:custom_blocks/electric_furnace/tick
execute if entity @s[tag=simplenergy.electric_brewing_stand] run function simplenergy:custom_blocks/electric_brewing_stand/tick

