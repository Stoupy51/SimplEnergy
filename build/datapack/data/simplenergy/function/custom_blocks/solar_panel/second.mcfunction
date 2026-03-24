
#> simplenergy:custom_blocks/solar_panel/second
#
# @executed	as @e[tag=simplenergy.second] & at @s
#
# @within	simplenergy:custom_blocks/second
#

# Produce Energy depending on the power of daylight sensor
execute if predicate simplenergy:check_daylight_power run scoreboard players operation @s energy.storage += @s simplenergy.energy_rate
execute if score @s energy.storage > @s energy.max_storage run scoreboard players operation @s energy.storage = @s energy.max_storage

