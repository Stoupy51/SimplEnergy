
#> simplenergy:custom_blocks/elevator/place_secondary
#
# @executed	at @s
#
# @within	simplenergy:custom_blocks/elevator/place_main [ at @s ]
#

# Add convention and utils tags, and the custom block tag
tag @s add global.ignore
tag @s add global.ignore.kill
tag @s add smithed.entity
tag @s add smithed.block
tag @s add simplenergy.custom_block
tag @s add simplenergy.elevator
tag @s add simplenergy.vanilla.minecraft_iron_block

# Add a custom name
data merge entity @s {"CustomName": {"translate": "simplenergy.elevator"}}

# Modify item display entity to match the custom block
item replace entity @s contents with minecraft:furnace[item_model="simplenergy:elevator"]
data modify entity @s transformation.scale set value [1.002f,1.002f,1.002f]
data modify entity @s brightness set value {block:15,sky:15}

# Energy part
tag @s add energy.receive
scoreboard players set @s energy.max_storage 1200
scoreboard players operation @s energy.transfer_rate = @s energy.max_storage
scoreboard players add @s energy.storage 0
scoreboard players add @s energy.change_rate 0
function energy:v1/api/init_machine

# Add tag for loop every tick
tag @s add simplenergy.tick
scoreboard players add #tick_entities simplenergy.data 1

