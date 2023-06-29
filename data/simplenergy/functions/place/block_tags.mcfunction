
# Add convention and utils tags
tag @s add global.ignore
tag @s add global.ignore.kill
tag @s add smithed.entity
tag @s add smithed.block
tag @s add simplenergy.destroyer

# Modify item display entity to match the custom block
data modify entity @s transformation.scale set value [1.002f,1.002f,1.002f]
data modify entity @s brightness set value {block:15,sky:15}

## Check if the item have rotation data
# Furnace case
scoreboard players set #rotation simplenergy.data 0
execute if score #rotation simplenergy.data matches 0 store success score #rotation simplenergy.data if block ~ ~ ~ furnace[facing=north] run data modify entity @s Rotation[0] set value 180.0f
execute if score #rotation simplenergy.data matches 0 store success score #rotation simplenergy.data if block ~ ~ ~ furnace[facing=east] run data modify entity @s Rotation[0] set value 270.0f
execute if score #rotation simplenergy.data matches 0 store success score #rotation simplenergy.data if block ~ ~ ~ furnace[facing=south] run data modify entity @s Rotation[0] set value 0.0f
execute if score #rotation simplenergy.data matches 0 store success score #rotation simplenergy.data if block ~ ~ ~ furnace[facing=west] run data modify entity @s Rotation[0] set value 90.0f
# No more cases for now

