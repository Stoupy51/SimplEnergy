
#> simplenergy:custom_blocks/redstone_generator/place_secondary
#
# @executed	at @s
#
# @within	simplenergy:custom_blocks/redstone_generator/place_main [ at @s ]
#

# Add convention and utils tags, and the custom block tag
tag @s add global.ignore
tag @s add global.ignore.kill
tag @s add smithed.entity
tag @s add smithed.block
tag @s add simplenergy.custom_block
tag @s add simplenergy.redstone_generator
tag @s add simplenergy.vanilla.minecraft_furnace

# Add a custom name
data merge entity @s {"CustomName": {"translate": "simplenergy.redstone_generator"}}

# Modify item display entity to match the custom block
item replace entity @s container.0 with minecraft:furnace[item_model="simplenergy:redstone_generator"]
data modify entity @s transformation.scale set value [1.002f,1.002f,1.002f]
data modify entity @s brightness set value {block:15,sky:15}

# Apply rotation
execute if score #rotation simplenergy.data matches 1 run data modify entity @s Rotation[0] set value 180.0f
execute if score #rotation simplenergy.data matches 2 run data modify entity @s Rotation[0] set value 270.0f
execute if score #rotation simplenergy.data matches 3 run data modify entity @s Rotation[0] set value 0.0f
execute if score #rotation simplenergy.data matches 4 run data modify entity @s Rotation[0] set value 90.0f

# Energy part
tag @s add energy.send
scoreboard players set @s energy.max_storage 6400
scoreboard players operation @s energy.transfer_rate = @s energy.max_storage
scoreboard players add @s energy.storage 0
scoreboard players add @s energy.change_rate 0
function energy:v1/api/init_machine

# Add tag for loop every second
tag @s add simplenergy.second
scoreboard players add #second_entities simplenergy.data 1

