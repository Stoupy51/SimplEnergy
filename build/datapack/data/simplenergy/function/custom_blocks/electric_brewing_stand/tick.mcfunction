
#> simplenergy:custom_blocks/electric_brewing_stand/tick
#
# @executed	as @e[tag=simplenergy.tick] & at @s
#
# @within	simplenergy:custom_blocks/tick
#

# Store values for efficient look up
data modify storage simplenergy:temp all set from block ~ ~ ~
execute store result score #cook_time simplenergy.data run data get storage simplenergy:temp all.BrewTime
execute store result score #burn_time simplenergy.data run data get storage simplenergy:temp all.Fuel
execute if score @s energy.storage >= @s simplenergy.energy_rate if data storage simplenergy:temp all.Items[{Slot:3b}] run function simplenergy:custom_blocks/electric_brewing_stand/work

# Update gui depending on energy storage
execute if score @s energy.storage matches ..0 run item replace block ~ ~ ~ container.4 with minecraft:command_block[item_model="simplenergy:gui/electric_brewing_stand_0",tooltip_display={"hide_tooltip":true},custom_data={"common_signals":{"temp":true}}]
execute if score @s energy.storage matches 1..599 run item replace block ~ ~ ~ container.4 with minecraft:command_block[item_model="simplenergy:gui/electric_brewing_stand_1",tooltip_display={"hide_tooltip":true},custom_data={"common_signals":{"temp":true}}]
execute if score @s energy.storage matches 600..1199 run item replace block ~ ~ ~ container.4 with minecraft:command_block[item_model="simplenergy:gui/electric_brewing_stand_4",tooltip_display={"hide_tooltip":true},custom_data={"common_signals":{"temp":true}}]
execute if score @s energy.storage matches 1200..1799 run item replace block ~ ~ ~ container.4 with minecraft:command_block[item_model="simplenergy:gui/electric_brewing_stand_5",tooltip_display={"hide_tooltip":true},custom_data={"common_signals":{"temp":true}}]
execute if score @s energy.storage matches 1800..2399 run item replace block ~ ~ ~ container.4 with minecraft:command_block[item_model="simplenergy:gui/electric_brewing_stand_2",tooltip_display={"hide_tooltip":true},custom_data={"common_signals":{"temp":true}}]
execute if score @s energy.storage matches 2400.. run item replace block ~ ~ ~ container.4 with minecraft:command_block[item_model="simplenergy:gui/electric_brewing_stand_3",tooltip_display={"hide_tooltip":true},custom_data={"common_signals":{"temp":true}}]

# Update block visual depends on cook time, and playsound every second
execute if score #cook_time simplenergy.data matches 0 run data modify entity @s[tag=simplenergy.update_visual] item.components."minecraft:item_model" set value "simplenergy:electric_brewing_stand"
tag @s remove simplenergy.update_visual
execute if score #cook_time simplenergy.data matches 0 run tag @s add simplenergy.update_visual
execute if score #cook_time simplenergy.data matches 1.. run data modify entity @s item.components."minecraft:item_model" set value "simplenergy:electric_brewing_stand_on"
execute if score #cook_time simplenergy.data matches 1.. if score #second simplenergy.data matches 0 run playsound simplenergy:electric_brewing_stand block @a[distance=..12] ~ ~ ~ 1.0

