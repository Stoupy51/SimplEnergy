
#> simplenergy:custom_blocks/_groups/iron_trapdoor
#
# @within	simplenergy:custom_blocks/destroy
#

execute if score #total_wind_turbine simplenergy.data matches 1.. if entity @s[tag=simplenergy.wind_turbine] run function simplenergy:custom_blocks/wind_turbine/destroy

