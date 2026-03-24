
#> simplenergy:custom_blocks/pulverizer/place_secondary
#
# @executed	at @s
#
# @within	simplenergy:custom_blocks/pulverizer/place_main [ at @s ]
#

# Add convention and utils tags, and the custom block tag
tag @s add global.ignore
tag @s add global.ignore.kill
tag @s add smithed.entity
tag @s add smithed.block
tag @s add simplenergy.custom_block
tag @s add simplenergy.pulverizer
tag @s add simplenergy.vanilla.minecraft_barrel

# Add a custom name
data merge entity @s {"CustomName": {"translate": "simplenergy.pulverizer"}}

# Modify item display entity to match the custom block
item replace entity @s contents with minecraft:furnace[item_model="simplenergy:pulverizer"]
data modify entity @s transformation.scale set value [1.002f,1.002f,1.002f]
data modify entity @s brightness set value {block:15,sky:15}

# Apply rotation
execute if score #rotation simplenergy.data matches 1 run data modify entity @s Rotation[0] set value 180.0f
execute if score #rotation simplenergy.data matches 2 run data modify entity @s Rotation[0] set value 270.0f
execute if score #rotation simplenergy.data matches 3 run data modify entity @s Rotation[0] set value 0.0f
execute if score #rotation simplenergy.data matches 4 run data modify entity @s Rotation[0] set value 90.0f

# Energy part
tag @s add energy.receive
scoreboard players set @s simplenergy.energy_rate 120
scoreboard players set @s energy.max_storage 6400
scoreboard players operation @s energy.transfer_rate = @s energy.max_storage
scoreboard players add @s energy.storage 0
scoreboard players add @s energy.change_rate 0
function energy:v1/api/init_machine

# Copy slots to the item components
data modify entity @s item.components."minecraft:custom_data".simplenergy.pulverizer_slots set from entity @p[tag=simplenergy.placer] SelectedItem.components."minecraft:custom_data".simplenergy.pulverizer_slots

# ItemIO compatibility
tag @s add itemio.container
tag @s add itemio.container.hopper
data modify entity @s item.components."minecraft:custom_data".itemio.ioconfig set value []
data modify entity @s item.components."minecraft:custom_data".itemio.ioconfig append value {"Slot":0,"mode":"input","allowed_side":{"north":true,"south":true,"east":true,"west":true,"top":true}}
data modify entity @s item.components."minecraft:custom_data".itemio.ioconfig append value {"Slot":1,"mode":"input","allowed_side":{"north":true,"south":true,"east":true,"west":true,"top":true}}
data modify entity @s item.components."minecraft:custom_data".itemio.ioconfig append value {"Slot":2,"mode":"input","allowed_side":{"north":true,"south":true,"east":true,"west":true,"top":true}}
data modify entity @s item.components."minecraft:custom_data".itemio.ioconfig append value {"Slot":3,"mode":"input","allowed_side":{"north":true,"south":true,"east":true,"west":true,"top":true}}
data modify entity @s item.components."minecraft:custom_data".itemio.ioconfig append value {"Slot":4,"mode":"input","allowed_side":{"north":true,"south":true,"east":true,"west":true,"top":true}}
data modify entity @s item.components."minecraft:custom_data".itemio.ioconfig append value {"Slot":5,"mode":"input","allowed_side":{"north":true,"south":true,"east":true,"west":true,"top":true}}
data modify entity @s item.components."minecraft:custom_data".itemio.ioconfig append value {"Slot":6,"mode":"input","allowed_side":{"north":true,"south":true,"east":true,"west":true,"top":true}}
data modify entity @s item.components."minecraft:custom_data".itemio.ioconfig append value {"Slot":7,"mode":"input","allowed_side":{"north":true,"south":true,"east":true,"west":true,"top":true}}
data modify entity @s item.components."minecraft:custom_data".itemio.ioconfig append value {"Slot":18,"mode":"output","allowed_side":{"bottom":true}}
data modify entity @s item.components."minecraft:custom_data".itemio.ioconfig append value {"Slot":19,"mode":"output","allowed_side":{"bottom":true}}
data modify entity @s item.components."minecraft:custom_data".itemio.ioconfig append value {"Slot":20,"mode":"output","allowed_side":{"bottom":true}}
data modify entity @s item.components."minecraft:custom_data".itemio.ioconfig append value {"Slot":21,"mode":"output","allowed_side":{"bottom":true}}
data modify entity @s item.components."minecraft:custom_data".itemio.ioconfig append value {"Slot":22,"mode":"output","allowed_side":{"bottom":true}}
data modify entity @s item.components."minecraft:custom_data".itemio.ioconfig append value {"Slot":23,"mode":"output","allowed_side":{"bottom":true}}
data modify entity @s item.components."minecraft:custom_data".itemio.ioconfig append value {"Slot":24,"mode":"output","allowed_side":{"bottom":true}}
data modify entity @s item.components."minecraft:custom_data".itemio.ioconfig append value {"Slot":25,"mode":"output","allowed_side":{"bottom":true}}
function #itemio:calls/container/init

# Make the block rotatable by wrench
tag @s add simplenergy.rotatable
# Add tag for loop every tick
tag @s add simplenergy.tick
scoreboard players add #tick_entities simplenergy.data 1

