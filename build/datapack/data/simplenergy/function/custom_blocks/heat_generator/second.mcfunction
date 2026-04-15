
#> simplenergy:custom_blocks/heat_generator/second
#
# @executed	as @e[tag=simplenergy.second] & at @s
#
# @within	simplenergy:custom_blocks/second
#

# Prepare working state
scoreboard players set #working simplenergy.data 0
execute if score @s energy.storage = @s energy.max_storage run scoreboard players set #working simplenergy.data -1

# Check if lava is around
execute if score #working simplenergy.data matches 0 if block ~1 ~ ~ lava run scoreboard players set #working simplenergy.data 1
execute if score #working simplenergy.data matches 0 if block ~-1 ~ ~ lava run scoreboard players set #working simplenergy.data 1
execute if score #working simplenergy.data matches 0 if block ~ ~ ~1 lava run scoreboard players set #working simplenergy.data 1
execute if score #working simplenergy.data matches 0 if block ~ ~ ~-1 lava run scoreboard players set #working simplenergy.data 1
execute if score #working simplenergy.data matches 0 if block ~ ~1 ~ lava run scoreboard players set #working simplenergy.data 1
execute if score #working simplenergy.data matches 0 if block ~ ~-1 ~ lava run scoreboard players set #working simplenergy.data 1

# Update the model and stop if not working
execute if score #working simplenergy.data matches 1 run data modify entity @s item.components."minecraft:item_model" set value "simplenergy:heat_generator_on"
execute if score #working simplenergy.data matches ..0 run return run data modify entity @s item.components."minecraft:item_model" set value "simplenergy:heat_generator"

# Generate energy and playsound
scoreboard players operation @s energy.storage += @s simplenergy.energy_rate
execute if score @s energy.storage >= @s energy.max_storage run scoreboard players operation @s energy.storage = @s energy.max_storage

