
#> simplenergy:custom_blocks/deepslate_simplunium_ore/place_secondary
#
# @executed	at @s
#
# @within	simplenergy:custom_blocks/deepslate_simplunium_ore/place_main [ at @s ]
#

# Add convention and utils tags, and the custom block tag
tag @s add global.ignore
tag @s add global.ignore.kill
tag @s add smithed.entity
tag @s add smithed.block
tag @s add simplenergy.custom_block
tag @s add simplenergy.deepslate_simplunium_ore
tag @s add simplenergy.vanilla.minecraft_polished_deepslate

# Add a custom name
data merge entity @s {"CustomName": {"translate": "simplenergy.deepslate_simplunium_ore"}}

# Modify item display entity to match the custom block
item replace entity @s contents with minecraft:furnace[item_model="simplenergy:deepslate_simplunium_ore"]
data modify entity @s transformation.scale set value [1.002f,1.002f,1.002f]
data modify entity @s brightness set value {block:15,sky:15}

