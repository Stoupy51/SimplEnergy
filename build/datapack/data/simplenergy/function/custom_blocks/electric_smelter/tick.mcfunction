
#> simplenergy:custom_blocks/electric_smelter/tick
#
# @within	simplenergy:custom_blocks/tick
#

# Store values for efficient look up
data modify storage simplenergy:temp all set from block ~ ~ ~
execute store result score #cook_time simplenergy.data run data get storage simplenergy:temp all.CookTime
execute store result score #burn_time simplenergy.data run data get storage simplenergy:temp all.BurnTime
execute if score @s energy.storage matches 80.. if data storage simplenergy:temp all.Items[{Slot:0b}] run function simplenergy:custom_blocks/electric_smelter/work

# Update gui depending on energy storage
execute if score @s energy.storage matches ..0 run item replace block ~ ~ ~ container.1 with cobblestone[custom_model_data=2012987,hide_tooltip={},custom_data={"common_signals":{"temp":true}}]
execute if score @s energy.storage matches 1..1599 run item replace block ~ ~ ~ container.1 with cobblestone[custom_model_data=2012986,hide_tooltip={},custom_data={"common_signals":{"temp":true}}]
execute if score @s energy.storage matches 1600..3199 run item replace block ~ ~ ~ container.1 with cobblestone[custom_model_data=2012985,hide_tooltip={},custom_data={"common_signals":{"temp":true}}]
execute if score @s energy.storage matches 3200..4799 run item replace block ~ ~ ~ container.1 with cobblestone[custom_model_data=2012984,hide_tooltip={},custom_data={"common_signals":{"temp":true}}]
execute if score @s energy.storage matches 4800..6399 run item replace block ~ ~ ~ container.1 with cobblestone[custom_model_data=2012983,hide_tooltip={},custom_data={"common_signals":{"temp":true}}]
execute if score @s energy.storage matches 6400.. run item replace block ~ ~ ~ container.1 with cobblestone[custom_model_data=2012982,hide_tooltip={},custom_data={"common_signals":{"temp":true}}]

# Update block visual depends on cook time, and playsound every second
execute if score #cook_time simplenergy.data matches 0 run data modify entity @s[tag=simplenergy.update_visual] item.components."minecraft:custom_model_data" set value 2012028
tag @s remove simplenergy.update_visual
execute if score #cook_time simplenergy.data matches 0 run tag @s add simplenergy.update_visual
execute if score #cook_time simplenergy.data matches 1.. run data modify entity @s item.components."minecraft:custom_model_data" set value 2012029
execute if score #cook_time simplenergy.data matches 1.. if score #second simplenergy.data matches 0 run playsound simplenergy:electric_smelter block @a[distance=..12] ~ ~ ~ 0.25

