
#> simplenergy:custom_blocks/electric_brewing_stand/tick
#
# @within	simplenergy:custom_blocks/tick
#

# Store values for efficient look up
data modify storage simplenergy:temp all set from block ~ ~ ~
execute store result score #cook_time simplenergy.data run data get storage simplenergy:temp all.BrewTime
execute store result score #burn_time simplenergy.data run data get storage simplenergy:temp all.Fuel
execute if score @s energy.storage matches 40.. if data storage simplenergy:temp all.Items[{Slot:3b}] run function simplenergy:custom_blocks/electric_brewing_stand/work

# Update gui depending on energy storage
execute if score @s energy.storage matches ..0 run item replace block ~ ~ ~ container.4 with cobblestone[custom_model_data=2012999,hide_tooltip={},custom_data={"common_signals":{"temp":true}}]
execute if score @s energy.storage matches 1..599 run item replace block ~ ~ ~ container.4 with cobblestone[custom_model_data=2012998,hide_tooltip={},custom_data={"common_signals":{"temp":true}}]
execute if score @s energy.storage matches 600..1199 run item replace block ~ ~ ~ container.4 with cobblestone[custom_model_data=2012997,hide_tooltip={},custom_data={"common_signals":{"temp":true}}]
execute if score @s energy.storage matches 1200..1799 run item replace block ~ ~ ~ container.4 with cobblestone[custom_model_data=2012996,hide_tooltip={},custom_data={"common_signals":{"temp":true}}]
execute if score @s energy.storage matches 1800..2399 run item replace block ~ ~ ~ container.4 with cobblestone[custom_model_data=2012995,hide_tooltip={},custom_data={"common_signals":{"temp":true}}]
execute if score @s energy.storage matches 2400.. run item replace block ~ ~ ~ container.4 with cobblestone[custom_model_data=2012994,hide_tooltip={},custom_data={"common_signals":{"temp":true}}]

# Update block visual depends on cook time, and playsound every second
execute if score #cook_time simplenergy.data matches 0 run data modify entity @s[tag=simplenergy.update_visual] item.components."minecraft:custom_model_data" set value 2012030
tag @s remove simplenergy.update_visual
execute if score #cook_time simplenergy.data matches 0 run tag @s add simplenergy.update_visual
execute if score #cook_time simplenergy.data matches 1.. run data modify entity @s item.components."minecraft:custom_model_data" set value 2012031
execute if score #cook_time simplenergy.data matches 1.. if score #second simplenergy.data matches 0 run playsound simplenergy:electric_brewing_stand block @a[distance=..12] ~ ~ ~ 1.0

