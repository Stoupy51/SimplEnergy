
#> simplenergy:custom_blocks/pulverizer/tick
#
# @within	simplenergy:custom_blocks/tick
#

# Launch work function if enough power
scoreboard players set #cooking simplenergy.data 0
execute if score @s energy.storage matches 120.. run function simplenergy:custom_blocks/pulverizer/work

# Update gui depending on energy storage
execute if score @s energy.storage matches ..0 run item replace block ~ ~ ~ container.26 with cobblestone[custom_model_data=2012961,hide_tooltip={},custom_data={"common_signals":{"temp":true}}]
execute if score @s energy.storage matches 1..1599 run item replace block ~ ~ ~ container.26 with cobblestone[custom_model_data=2012960,hide_tooltip={},custom_data={"common_signals":{"temp":true}}]
execute if score @s energy.storage matches 1600..3199 run item replace block ~ ~ ~ container.26 with cobblestone[custom_model_data=2012959,hide_tooltip={},custom_data={"common_signals":{"temp":true}}]
execute if score @s energy.storage matches 3200..4799 run item replace block ~ ~ ~ container.26 with cobblestone[custom_model_data=2012958,hide_tooltip={},custom_data={"common_signals":{"temp":true}}]
execute if score @s energy.storage matches 4800..6399 run item replace block ~ ~ ~ container.26 with cobblestone[custom_model_data=2012957,hide_tooltip={},custom_data={"common_signals":{"temp":true}}]
execute if score @s energy.storage matches 6400.. run item replace block ~ ~ ~ container.26 with cobblestone[custom_model_data=2012956,hide_tooltip={},custom_data={"common_signals":{"temp":true}}]

# Update block visual depends on cook time, and playsound every second
execute if score #cooking simplenergy.data matches 0 run data modify entity @s[tag=simplenergy.update_visual] item.components."minecraft:custom_model_data" set value 2012043
tag @s remove simplenergy.update_visual
execute if score #cooking simplenergy.data matches 0 run tag @s add simplenergy.update_visual
execute if score #cooking simplenergy.data matches 1 run data modify entity @s item.components."minecraft:custom_model_data" set value 2012044
execute if score #cooking simplenergy.data matches 1 if score #second simplenergy.data matches 0 run playsound simplenergy:pulverizer block @a[distance=..12] ~ ~ ~ 0.25

