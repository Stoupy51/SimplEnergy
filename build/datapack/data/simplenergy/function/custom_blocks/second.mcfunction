
#> simplenergy:custom_blocks/second
#
# @executed	as @e[tag=simplenergy.second] & at @s
#
# @within	simplenergy:v2.0.15/second [ as @e[tag=simplenergy.second] & at @s ]
#

execute if entity @s[tag=simplenergy.solar_panel] run function simplenergy:custom_blocks/solar_panel/second
execute if entity @s[tag=simplenergy.furnace_generator] run function simplenergy:custom_blocks/furnace_generator/second
execute if entity @s[tag=simplenergy.redstone_generator] run function simplenergy:custom_blocks/redstone_generator/second
execute if entity @s[tag=simplenergy.cauldron_generator] run function simplenergy:custom_blocks/cauldron_generator/second
execute if entity @s[tag=simplenergy.heat_generator] run function simplenergy:custom_blocks/heat_generator/second
execute if entity @s[tag=simplenergy.wind_turbine] run function simplenergy:custom_blocks/wind_turbine/second

