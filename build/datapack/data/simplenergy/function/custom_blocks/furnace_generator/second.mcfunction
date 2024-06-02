
#> simplenergy:custom_blocks/furnace_generator/second
#
# @within	simplenergy:custom_blocks/second
#

# Update the gui to default
execute store result score #burn_time simplenergy.data run data get block ~ ~ ~ BurnTime
execute if score #burn_time simplenergy.data matches 0 run item replace block ~ ~ ~ container.0 with cobblestone[custom_model_data=2012981,hide_tooltip={},custom_data={"common_signals":{"temp":true}}]
execute if score #burn_time simplenergy.data matches 0 run data modify entity @s item.components."minecraft:custom_model_data" set value 2012023
execute if score #burn_time simplenergy.data matches 1.. run item replace block ~ ~ ~ container.0 with cobblestone[custom_model_data=2012980,hide_tooltip={},custom_data={"common_signals":{"temp":true}}]
execute if score #burn_time simplenergy.data matches 1.. run data modify entity @s item.components."minecraft:custom_model_data" set value 2012024

# Update the gui & produce Energy while working
execute if score #burn_time simplenergy.data matches 1.. run scoreboard players add @s energy.storage 10
execute if score #burn_time simplenergy.data matches 1.. run playsound simplenergy:furnace_generator block @a[distance=..12] ~ ~ ~ 0.25
execute if score @s energy.storage > @s energy.max_storage run scoreboard players operation @s energy.storage = @s energy.max_storage

# Prevent the furnace from really cooking
data modify block ~ ~ ~ CookTimeTotal set value -200s
data modify block ~ ~ ~ CookTime set value 0s

