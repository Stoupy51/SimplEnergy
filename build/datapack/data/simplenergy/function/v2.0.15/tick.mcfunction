
#> simplenergy:v2.0.15/tick
#
# @within	simplenergy:v2.0.15/load/tick_verification
#

# Timers
scoreboard players add #tick_2 simplenergy.data 1
scoreboard players add #second simplenergy.data 1
scoreboard players add #second_5 simplenergy.data 1
execute if score #tick_2 simplenergy.data matches 3.. run function simplenergy:v2.0.15/tick_2
execute if score #second simplenergy.data matches 20.. run function simplenergy:v2.0.15/second
execute if score #second_5 simplenergy.data matches 90.. run function simplenergy:v2.0.15/second_5

# Increase every tick the elevator time
scoreboard players add #elevator_time simplenergy.data 1

# Custom blocks tick functions
execute if score #tick_entities simplenergy.data matches 1.. as @e[tag=simplenergy.tick] at @s run function simplenergy:custom_blocks/tick

