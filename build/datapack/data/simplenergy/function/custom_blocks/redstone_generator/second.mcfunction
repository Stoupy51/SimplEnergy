
#> simplenergy:custom_blocks/redstone_generator/second
#
# @executed	as @e[tag=simplenergy.second] & at @s
#
# @within	simplenergy:custom_blocks/second
#

# Prevent the furnace from really cooking
data modify block ~ ~ ~ cooking_total_time set value -200s
data modify block ~ ~ ~ cooking_time_spent set value 0s

# Stop if full energy
execute if score @s energy.storage >= @s energy.max_storage run return run function simplenergy:custom_blocks/redstone_generator/stop

# Consume redstone dust for fuel
execute if data block ~ ~ ~ {Items:[{Slot:0b,id:"minecraft:redstone"}],lit_time_remaining:0s} run function simplenergy:custom_blocks/redstone_generator/consume_redstone_dust
execute if data block ~ ~ ~ {Items:[{Slot:0b,id:"minecraft:redstone_block"}],lit_time_remaining:0s} run function simplenergy:custom_blocks/redstone_generator/consume_redstone_block

# Update the gui to default
execute store result score #burn_time simplenergy.data run data get block ~ ~ ~ lit_time_remaining
execute if score #burn_time simplenergy.data matches 0 run function simplenergy:custom_blocks/redstone_generator/stop
execute if score #burn_time simplenergy.data matches 1.. run item replace block ~ ~ ~ container.1 with cobblestone[item_model="simplenergy:gui/redstone_generator_on",tooltip_display={"hide_tooltip":true},custom_data={"common_signals":{"temp":true}}]
execute if score #burn_time simplenergy.data matches 1.. run data modify entity @s item.components."minecraft:item_model" set value "simplenergy:redstone_generator_on"

# Update the gui & produce Energy while working
execute if score #burn_time simplenergy.data matches 1.. run scoreboard players operation @s energy.storage += @s simplenergy.energy_rate
execute if score #burn_time simplenergy.data matches 1.. run playsound simplenergy:redstone_generator block @a[distance=..12] ~ ~ ~ 0.25
execute if score @s energy.storage > @s energy.max_storage run scoreboard players operation @s energy.storage = @s energy.max_storage

