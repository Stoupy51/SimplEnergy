
#> simplenergy:calls/energy/cable_can_connect
#
# @within	#energy:v1/cable_can_connect
#

execute if entity @s[tag=simplenergy.wind_turbine] if score #cable.in energy.data matches 1 run scoreboard players set #cable.out energy.data 0
execute if entity @s[tag=simplenergy.solar_panel] if score #cable.in energy.data matches 1 run scoreboard players set #cable.out energy.data 0

