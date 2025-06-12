
#> simplenergy:custom_blocks/raw_simplunium_block/place_secondary
#
# @within	simplenergy:custom_blocks/raw_simplunium_block/place_main
#

# Add convention and utils tags, and the custom block tag
tag @s add global.ignore
tag @s add global.ignore.kill
tag @s add smithed.entity
tag @s add smithed.block
tag @s add simplenergy.custom_block
tag @s add simplenergy.raw_simplunium_block
tag @s add simplenergy.vanilla.minecraft_raw_iron_block

# Add a custom name
data merge entity @s {"CustomName": {"translate": "simplenergy.raw_simplunium_block","italic": false,"color": "white"}}

# Modify item display entity to match the custom block
item replace entity @s container.0 with minecraft:furnace[item_model="simplenergy:raw_simplunium_block"]
data modify entity @s transformation.scale set value [1.002f,1.002f,1.002f]
data modify entity @s brightness set value {block:15,sky:15}

