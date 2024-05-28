
#> simplenergy:custom_blocks/simple_battery/place_secondary
#
# @within	simplenergy:custom_blocks/simple_battery/place_main
#

# Add convention and utils tags, and the custom block tag
tag @s add global.ignore
tag @s add global.ignore.kill
tag @s add smithed.entity
tag @s add smithed.block
tag @s add simplenergy.custom_block
tag @s add simplenergy.simple_battery
tag @s add simplenergy.vanilla.minecraft_copper_block

# Modify item display entity to match the custom block
item replace entity @s container.0 with minecraft:furnace[minecraft:custom_model_data=2012019]
data modify entity @s transformation.scale set value [1.002f,1.008f,1.002f]
data modify entity @s transformation.translation[1] set value 0.003f
data modify entity @s brightness set value {block:15,sky:15}

## Check if the block have rotation
# Furnace case
scoreboard players set #rotation simplenergy.data 0
execute if score #rotation simplenergy.data matches 0 store success score #rotation simplenergy.data if block ~ ~ ~ furnace[facing=north] run data modify entity @s Rotation[0] set value 180.0f
execute if score #rotation simplenergy.data matches 0 store success score #rotation simplenergy.data if block ~ ~ ~ furnace[facing=east] run data modify entity @s Rotation[0] set value 270.0f
execute if score #rotation simplenergy.data matches 0 store success score #rotation simplenergy.data if block ~ ~ ~ furnace[facing=south] run data modify entity @s Rotation[0] set value 0.0f
execute if score #rotation simplenergy.data matches 0 store success score #rotation simplenergy.data if block ~ ~ ~ furnace[facing=west] run data modify entity @s Rotation[0] set value 90.0f
# Iron trapdoor case
execute if score #rotation simplenergy.data matches 0 store success score #rotation simplenergy.data if block ~ ~ ~ iron_trapdoor[facing=north] run data modify entity @s Rotation[0] set value 180.0f
execute if score #rotation simplenergy.data matches 0 store success score #rotation simplenergy.data if block ~ ~ ~ iron_trapdoor[facing=east] run data modify entity @s Rotation[0] set value 270.0f
execute if score #rotation simplenergy.data matches 0 store success score #rotation simplenergy.data if block ~ ~ ~ iron_trapdoor[facing=south] run data modify entity @s Rotation[0] set value 0.0f
execute if score #rotation simplenergy.data matches 0 store success score #rotation simplenergy.data if block ~ ~ ~ iron_trapdoor[facing=west] run data modify entity @s Rotation[0] set value 90.0f
# No more cases for now

