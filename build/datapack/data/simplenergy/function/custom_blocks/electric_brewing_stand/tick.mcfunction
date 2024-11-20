
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
execute if score @s energy.storage matches ..0 run item replace block ~ ~ ~ container.4 with cobblestone[item_model="simplenergy:gui/electric_brewing_stand_0",hide_tooltip={},custom_data={"common_signals":{"temp":true}}]
execute if score @s energy.storage matches 1..599 run item replace block ~ ~ ~ container.4 with cobblestone[item_model="simplenergy:gui/electric_brewing_stand_1",hide_tooltip={},custom_data={"common_signals":{"temp":true}}]
execute if score @s energy.storage matches 600..1199 run item replace block ~ ~ ~ container.4 with cobblestone[item_model="simplenergy:gui/electric_brewing_stand_2",hide_tooltip={},custom_data={"common_signals":{"temp":true}}]
execute if score @s energy.storage matches 1200..1799 run item replace block ~ ~ ~ container.4 with cobblestone[item_model="simplenergy:gui/electric_brewing_stand_3",hide_tooltip={},custom_data={"common_signals":{"temp":true}}]
execute if score @s energy.storage matches 1800..2399 run item replace block ~ ~ ~ container.4 with cobblestone[item_model="simplenergy:gui/electric_brewing_stand_4",hide_tooltip={},custom_data={"common_signals":{"temp":true}}]
execute if score @s energy.storage matches 2400.. run item replace block ~ ~ ~ container.4 with cobblestone[item_model="simplenergy:gui/electric_brewing_stand_5",hide_tooltip={},custom_data={"common_signals":{"temp":true}}]

# Update block visual depends on cook time, and playsound every second
execute if score #cook_time simplenergy.data matches 0 run data modify entity @s[tag=simplenergy.update_visual] item.components."minecraft:item_model" set value "simplenergy:electric_brewing_stand"
tag @s remove simplenergy.update_visual
execute if score #cook_time simplenergy.data matches 0 run tag @s add simplenergy.update_visual
execute if score #cook_time simplenergy.data matches 1.. run data modify entity @s item.components."minecraft:item_model" set value "simplenergy:electric_brewing_stand_on"
execute if score #cook_time simplenergy.data matches 1.. if score #second simplenergy.data matches 0 run playsound simplenergy:electric_brewing_stand block @a[distance=..12] ~ ~ ~ 1.0

