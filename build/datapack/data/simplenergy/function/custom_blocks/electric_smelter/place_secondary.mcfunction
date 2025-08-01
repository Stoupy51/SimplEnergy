
#> simplenergy:custom_blocks/electric_smelter/place_secondary
#
# @executed	at @s
#
# @within	simplenergy:custom_blocks/electric_smelter/place_main [ at @s ]
#

# Add convention and utils tags, and the custom block tag
tag @s add global.ignore
tag @s add global.ignore.kill
tag @s add smithed.entity
tag @s add smithed.block
tag @s add simplenergy.custom_block
tag @s add simplenergy.electric_smelter
tag @s add simplenergy.vanilla.minecraft_furnace

# Add a custom name
data merge entity @s {"CustomName": {"translate": "simplenergy.electric_smelter"}}

# Modify item display entity to match the custom block
item replace entity @s contents with minecraft:furnace[item_model="simplenergy:electric_smelter"]
data modify entity @s transformation.scale set value [1.002f,1.002f,1.002f]
data modify entity @s brightness set value {block:15,sky:15}

# Apply rotation
execute if score #rotation simplenergy.data matches 1 run data modify entity @s Rotation[0] set value 180.0f
execute if score #rotation simplenergy.data matches 2 run data modify entity @s Rotation[0] set value 270.0f
execute if score #rotation simplenergy.data matches 3 run data modify entity @s Rotation[0] set value 0.0f
execute if score #rotation simplenergy.data matches 4 run data modify entity @s Rotation[0] set value 90.0f

# Energy part
tag @s add energy.receive
scoreboard players set @s energy.max_storage 8000
scoreboard players operation @s energy.transfer_rate = @s energy.max_storage
scoreboard players add @s energy.storage 0
scoreboard players add @s energy.change_rate 0
function energy:v1/api/init_machine

# ItemIO compatibility
tag @s add itemio.container
tag @s add itemio.container.hopper
data modify entity @s item.components."minecraft:custom_data".itemio.ioconfig set value []
data modify entity @s item.components."minecraft:custom_data".itemio.ioconfig append value {"Slot":0,"mode":"input","allowed_side":{"north":true,"south":true,"east":true,"west":true,"top":true}}
data modify entity @s item.components."minecraft:custom_data".itemio.ioconfig append value {"Slot":2,"mode":"output","allowed_side":{"bottom":true,"north":true,"south":true,"east":true,"west":true}}
function #itemio:calls/container/init

# Make the block rotatable by wrench
tag @s add simplenergy.rotatable
# Add tag for loop every tick
tag @s add simplenergy.tick
scoreboard players add #tick_entities simplenergy.data 1

