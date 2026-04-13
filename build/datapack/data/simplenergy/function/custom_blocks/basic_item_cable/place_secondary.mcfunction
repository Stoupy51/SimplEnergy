
#> simplenergy:custom_blocks/basic_item_cable/place_secondary
#
# @executed	at @s
#
# @within	simplenergy:custom_blocks/basic_item_cable/place_main [ at @s ]
#

# Add convention and utils tags, and the custom block tag
tag @s add global.ignore
tag @s add global.ignore.kill
tag @s add smithed.entity
tag @s add smithed.block
tag @s add simplenergy.custom_block
tag @s add simplenergy.basic_item_cable
tag @s add simplenergy.vanilla.minecraft_conduit

# Add a custom name
data merge entity @s {"CustomName": {"translate": "simplenergy.basic_item_cable"}}

# Modify item display entity to match the custom block
item replace entity @s contents with minecraft:furnace[item_model="simplenergy:basic_item_cable"]
data modify entity @s transformation.scale set value [1.002f,1.002f,1.002f]
data modify entity @s brightness set value {block:15,sky:15}

# Item cable setup for models, and common itemio cable tag
tag @s add simplenergy.cable
tag @s add itemio.cable
function #itemio:calls/cables/init

