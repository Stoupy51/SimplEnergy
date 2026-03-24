
#> simplenergy:custom_blocks/wind_turbine/second
#
# @executed	as @e[tag=simplenergy.second] & at @s
#
# @within	simplenergy:custom_blocks/second
#

# Get height of the wind turbine
execute store result score #height simplenergy.data run data get entity @s Pos[1]

# Update the model and stop if not working
execute if score #height simplenergy.data matches 60.. run data modify entity @s item.components."minecraft:item_model" set value "simplenergy:wind_turbine_on"
execute if score #height simplenergy.data matches ..59 run return run data modify entity @s item.components."minecraft:item_model" set value "simplenergy:wind_turbine"

# Generate energy
execute if score #height simplenergy.data matches 60..69 run scoreboard players add @s energy.storage 2
execute if score #height simplenergy.data matches 70..79 run scoreboard players add @s energy.storage 4
execute if score #height simplenergy.data matches 80..89 run scoreboard players add @s energy.storage 6
execute if score #height simplenergy.data matches 90..99 run scoreboard players add @s energy.storage 8
execute if score #height simplenergy.data matches 100..109 run scoreboard players add @s energy.storage 10
execute if score #height simplenergy.data matches 110..119 run scoreboard players add @s energy.storage 12
execute if score #height simplenergy.data matches 120..129 run scoreboard players add @s energy.storage 14
execute if score #height simplenergy.data matches 130..139 run scoreboard players add @s energy.storage 16
execute if score #height simplenergy.data matches 140..149 run scoreboard players add @s energy.storage 18
execute if score #height simplenergy.data matches 150.. run scoreboard players add @s energy.storage 20
execute if score @s energy.storage >= @s energy.max_storage run scoreboard players operation @s energy.storage = @s energy.max_storage

