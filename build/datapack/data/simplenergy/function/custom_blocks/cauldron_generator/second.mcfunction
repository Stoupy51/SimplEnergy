
#> simplenergy:custom_blocks/cauldron_generator/second
#
# @within	simplenergy:custom_blocks/second
#

# Stop function if no water or full
scoreboard players set #working simplenergy.data 1
execute if score #working simplenergy.data matches 1 if score @s energy.storage matches 500.. run scoreboard players set #working simplenergy.data 0
execute if score #working simplenergy.data matches 1 if block ~ ~ ~ cauldron run scoreboard players set #working simplenergy.data 0
execute if score #working simplenergy.data matches 1 run data modify entity @s item.components."minecraft:custom_model_data" set value 1
execute if score #working simplenergy.data matches 0 run data modify entity @s item.components."minecraft:custom_model_data" set value 0
execute if score #working simplenergy.data matches 0 run return 0

# Increase timer data and setblock depending on timer data
scoreboard players add @s simplenergy.private 1
execute if score @s simplenergy.private matches 2.. run setblock ~ ~ ~ water_cauldron[level=2]
execute if score @s simplenergy.private matches 90.. run setblock ~ ~ ~ water_cauldron[level=1]
execute if score @s simplenergy.private matches 180.. run setblock ~ ~ ~ cauldron
execute if score @s simplenergy.private matches 180.. run scoreboard players reset @s simplenergy.private

# If the cauldron is full, reset private timer
execute if score @s simplenergy.private matches 1.. if block ~ ~ ~ water_cauldron[level=3] run scoreboard players set @s simplenergy.private 1

# Generate energy & Playsound
scoreboard players add @s energy.storage 5
execute if score @s energy.storage matches 500.. run scoreboard players set @s energy.storage 500
playsound simplenergy:cauldron_generator block @a[distance=..12] ~ ~ ~ 0.25

