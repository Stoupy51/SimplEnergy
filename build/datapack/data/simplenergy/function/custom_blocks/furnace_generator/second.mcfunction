
#> simplenergy:custom_blocks/furnace_generator/second
#
# @within	simplenergy:custom_blocks/second
#

# Update the gui to default
execute store result score #burn_time simplenergy.data run data get block ~ ~ ~ lit_time_remaining
execute if score #burn_time simplenergy.data matches 0 run item replace block ~ ~ ~ container.0 with cobblestone[item_model="simplenergy:gui/furnace_generator",tooltip_display={hide_tooltip:true},custom_data={common_signals:{temp:true}}]
execute if score #burn_time simplenergy.data matches 0 run data modify entity @s item.components."minecraft:item_model" set value "simplenergy:furnace_generator"
execute if score #burn_time simplenergy.data matches 1.. run item replace block ~ ~ ~ container.0 with cobblestone[item_model="simplenergy:gui/furnace_generator_on",tooltip_display={hide_tooltip:true},custom_data={common_signals:{temp:true}}]
execute if score #burn_time simplenergy.data matches 1.. run data modify entity @s item.components."minecraft:item_model" set value "simplenergy:furnace_generator_on"

# Update the gui & produce Energy while working
execute if score #burn_time simplenergy.data matches 1.. run scoreboard players add @s energy.storage 10
execute if score #burn_time simplenergy.data matches 1.. run playsound simplenergy:furnace_generator block @a[distance=..12] ~ ~ ~ 0.25
execute if score @s energy.storage > @s energy.max_storage run scoreboard players operation @s energy.storage = @s energy.max_storage

# Prevent the furnace from really cooking
data modify block ~ ~ ~ cooking_total_time set value -200s
data modify block ~ ~ ~ cooking_time_spent set value 0s

