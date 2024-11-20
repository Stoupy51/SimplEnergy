
#> simplenergy:custom_blocks/simplunium_block/place_secondary
#
# @within	simplenergy:custom_blocks/simplunium_block/place_main
#

# Add convention and utils tags, and the custom block tag
tag @s add global.ignore
tag @s add global.ignore.kill
tag @s add smithed.entity
tag @s add smithed.block
tag @s add simplenergy.custom_block
tag @s add simplenergy.simplunium_block
tag @s add simplenergy.vanilla.minecraft_iron_block

# Modify item display entity to match the custom block
item replace entity @s container.0 with minecraft:furnace[item_model="simplenergy:simplunium_block"]
data modify entity @s transformation.scale set value [1.002f,1.002f,1.002f]
data modify entity @s brightness set value {block:15,sky:15}

