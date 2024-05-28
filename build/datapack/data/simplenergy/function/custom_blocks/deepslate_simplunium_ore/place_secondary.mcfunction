
#> simplenergy:custom_blocks/deepslate_simplunium_ore/place_secondary
#
# @within	simplenergy:custom_blocks/deepslate_simplunium_ore/place_main
#

# Add convention and utils tags, and the custom block tag
tag @s add global.ignore
tag @s add global.ignore.kill
tag @s add smithed.entity
tag @s add smithed.block
tag @s add simplenergy.custom_block
tag @s add simplenergy.deepslate_simplunium_ore
tag @s add simplenergy.vanilla.minecraft_polished_deepslate

# Modify item display entity to match the custom block
item replace entity @s container.0 with minecraft:furnace[minecraft:custom_model_data=2012002]
data modify entity @s transformation.scale set value [1.002f,1.008f,1.002f]
data modify entity @s transformation.translation[1] set value 0.003f
data modify entity @s brightness set value {block:15,sky:15}

