
#> simplenergy:tick
#
# @within	simplenergy:load/tick_verification
#

# Timers
scoreboard players add #tick_2 simplenergy.data 1
scoreboard players add #second simplenergy.data 1
scoreboard players add #second_5 simplenergy.data 1
scoreboard players add #minute simplenergy.data 1
execute if score #tick_2 simplenergy.data matches 3.. run function simplenergy:tick_2
execute if score #second simplenergy.data matches 20.. run function simplenergy:second
execute if score #second_5 simplenergy.data matches 90.. run function simplenergy:second_5
execute if score #minute simplenergy.data matches 1200.. run function simplenergy:minute

