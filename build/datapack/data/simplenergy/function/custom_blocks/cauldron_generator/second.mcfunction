
#> simplenergy:custom_blocks/cauldron_generator/second
#
# @executed	as @e[tag=simplenergy.second] & at @s
#
# @within	simplenergy:custom_blocks/second
#

# Stop function if no water or full
scoreboard players set #working simplenergy.data 1
execute if score #working simplenergy.data matches 1 if score @s energy.storage >= @s energy.max_storage run scoreboard players set #working simplenergy.data 0
execute if score #working simplenergy.data matches 1 if block ~ ~ ~ cauldron run scoreboard players set #working simplenergy.data 0
# execute if score #working simplenergy.data matches 1 run data modify entity @s item.components."minecraft:item_model" set value "simplenergy:cauldron_generator_on"
execute if score #working simplenergy.data matches 0 run return run data modify entity @s item.components."minecraft:item_model" set value "simplenergy:cauldron_generator"

# Increase timer data and setblock depending on timer data
scoreboard players add @s simplenergy.private 1
execute if score @s simplenergy.private matches 2.. run setblock ~ ~ ~ water_cauldron[level=2]
execute if score @s simplenergy.private matches 90.. run setblock ~ ~ ~ water_cauldron[level=1]
execute if score @s simplenergy.private matches 180.. run setblock ~ ~ ~ cauldron
execute if score @s simplenergy.private matches 180.. run scoreboard players reset @s simplenergy.private

# If the cauldron is full, reset private timer
execute if score @s simplenergy.private matches 1.. if block ~ ~ ~ water_cauldron[level=3] run scoreboard players set @s simplenergy.private 1

# Generate energy & Playsound
scoreboard players operation @s energy.storage += @s simplenergy.energy_rate
execute if score @s energy.storage >= @s energy.max_storage run scoreboard players operation @s energy.storage = @s energy.max_storage
playsound simplenergy:cauldron_generator block @a[distance=..12] ~ ~ ~ 0.25

