
#> simplenergy:custom_blocks/electric_furnace/tick
#
# @executed	as @e[tag=simplenergy.tick] & at @s
#
# @within	simplenergy:custom_blocks/tick
#

# Store values for efficient look up
data modify storage simplenergy:temp all set from block ~ ~ ~
execute store result score #cook_time simplenergy.data run data get storage simplenergy:temp all.cooking_time_spent
execute store result score #burn_time simplenergy.data run data get storage simplenergy:temp all.lit_time_remaining
execute if score @s energy.storage >= @s simplenergy.energy_rate if data storage simplenergy:temp all.Items[{Slot:0b}] run function simplenergy:custom_blocks/electric_furnace/work

# Update gui depending on energy storage
execute if score @s energy.storage matches ..0 run item replace block ~ ~ ~ container.1 with minecraft:command_block[item_model="simplenergy:gui/electric_furnace_5",tooltip_display={"hide_tooltip":true},custom_data={"common_signals":{"temp":true}}]
execute if score @s energy.storage matches 1..399 run item replace block ~ ~ ~ container.1 with minecraft:command_block[item_model="simplenergy:gui/electric_furnace_1",tooltip_display={"hide_tooltip":true},custom_data={"common_signals":{"temp":true}}]
execute if score @s energy.storage matches 400..799 run item replace block ~ ~ ~ container.1 with minecraft:command_block[item_model="simplenergy:gui/electric_furnace_3",tooltip_display={"hide_tooltip":true},custom_data={"common_signals":{"temp":true}}]
execute if score @s energy.storage matches 800..1199 run item replace block ~ ~ ~ container.1 with minecraft:command_block[item_model="simplenergy:gui/electric_furnace_4",tooltip_display={"hide_tooltip":true},custom_data={"common_signals":{"temp":true}}]
execute if score @s energy.storage matches 1200..1599 run item replace block ~ ~ ~ container.1 with minecraft:command_block[item_model="simplenergy:gui/electric_furnace_0",tooltip_display={"hide_tooltip":true},custom_data={"common_signals":{"temp":true}}]
execute if score @s energy.storage matches 1600.. run item replace block ~ ~ ~ container.1 with minecraft:command_block[item_model="simplenergy:gui/electric_furnace_2",tooltip_display={"hide_tooltip":true},custom_data={"common_signals":{"temp":true}}]

# Update block visual depends on cook time, and playsound every second
execute if score #cook_time simplenergy.data matches 0 run data modify entity @s[tag=simplenergy.update_visual] item.components."minecraft:item_model" set value "simplenergy:electric_furnace"
tag @s remove simplenergy.update_visual
execute if score #cook_time simplenergy.data matches 0 run tag @s add simplenergy.update_visual
execute if score #cook_time simplenergy.data matches 1.. run data modify entity @s item.components."minecraft:item_model" set value "simplenergy:electric_furnace_on"
execute if score #cook_time simplenergy.data matches 1.. if score #second simplenergy.data matches 0 run playsound simplenergy:electric_furnace block @a[distance=..12] ~ ~ ~ 0.25

