
#> simplenergy:custom_blocks/tick
#
# @within	simplenergy:tick
#

execute if entity @s[tag=simplenergy.electric_smelter] run function simplenergy:custom_blocks/electric_smelter/tick
execute if entity @s[tag=simplenergy.electric_furnace] run function simplenergy:custom_blocks/electric_furnace/tick

