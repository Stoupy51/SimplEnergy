
#> simplenergy:custom_blocks/heat_generator/place_secondary
#
# @within	simplenergy:custom_blocks/heat_generator/place_main
#

# Add convention and utils tags, and the custom block tag
tag @s add global.ignore
tag @s add global.ignore.kill
tag @s add smithed.entity
tag @s add smithed.block
tag @s add simplenergy.custom_block
tag @s add simplenergy.heat_generator
tag @s add simplenergy.vanilla.minecraft_iron_block

# Add a custom name
data merge entity @s {"CustomName": {"translate": "simplenergy.heat_generator","italic": false,"color": "white"}}

# Modify item display entity to match the custom block
item replace entity @s container.0 with minecraft:furnace[item_model="simplenergy:heat_generator"]
data modify entity @s transformation.scale set value [1.002f,1.002f,1.002f]
data modify entity @s brightness set value {block:15,sky:15}

# Energy part
tag @s add energy.send
scoreboard players set @s energy.max_storage 1600
scoreboard players operation @s energy.transfer_rate = @s energy.max_storage
scoreboard players add @s energy.storage 0
scoreboard players add @s energy.change_rate 0
function energy:v1/api/init_machine

