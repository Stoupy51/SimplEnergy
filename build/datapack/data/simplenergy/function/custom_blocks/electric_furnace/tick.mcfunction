
#> simplenergy:custom_blocks/electric_furnace/tick
#
# @within	simplenergy:custom_blocks/tick
#

# Store values for efficient look up
data modify storage simplenergy:temp all set from block ~ ~ ~
execute store result score #cook_time simplenergy.data run data get storage simplenergy:temp all.CookTime
execute store result score #burn_time simplenergy.data run data get storage simplenergy:temp all.BurnTime
execute if score @s energy.storage matches 20.. if data storage simplenergy:temp all.Items[{Slot:0b}] run function simplenergy:custom_blocks/electric_furnace/work

# Update gui depending on energy storage
execute if score @s energy.storage matches ..0 run item replace block ~ ~ ~ container.1 with cobblestone[custom_model_data=2012993,hide_tooltip={},custom_data={"common_signals":{"temp":true}}]
execute if score @s energy.storage matches 1..399 run item replace block ~ ~ ~ container.1 with cobblestone[custom_model_data=2012992,hide_tooltip={},custom_data={"common_signals":{"temp":true}}]
execute if score @s energy.storage matches 400..799 run item replace block ~ ~ ~ container.1 with cobblestone[custom_model_data=2012991,hide_tooltip={},custom_data={"common_signals":{"temp":true}}]
execute if score @s energy.storage matches 800..1199 run item replace block ~ ~ ~ container.1 with cobblestone[custom_model_data=2012990,hide_tooltip={},custom_data={"common_signals":{"temp":true}}]
execute if score @s energy.storage matches 1200..1599 run item replace block ~ ~ ~ container.1 with cobblestone[custom_model_data=2012989,hide_tooltip={},custom_data={"common_signals":{"temp":true}}]
execute if score @s energy.storage matches 1600.. run item replace block ~ ~ ~ container.1 with cobblestone[custom_model_data=2012988,hide_tooltip={},custom_data={"common_signals":{"temp":true}}]

# Update block visual depends on cook time, and playsound every second
execute if score #cook_time simplenergy.data matches 0 run data modify entity @s[tag=simplenergy.update_visual] item.components."minecraft:custom_model_data" set value 2012026
tag @s remove simplenergy.update_visual
execute if score #cook_time simplenergy.data matches 0 run tag @s add simplenergy.update_visual
execute if score #cook_time simplenergy.data matches 1.. run data modify entity @s item.components."minecraft:custom_model_data" set value 2012027
execute if score #cook_time simplenergy.data matches 1.. if score #second simplenergy.data matches 0 run playsound simplenergy:electric_furnace block @a[distance=..12] ~ ~ ~ 0.25

