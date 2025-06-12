
#> simplenergy:custom_blocks/advanced_battery/place_secondary
#
# @within	simplenergy:custom_blocks/advanced_battery/place_main
#

# Add convention and utils tags, and the custom block tag
tag @s add global.ignore
tag @s add global.ignore.kill
tag @s add smithed.entity
tag @s add smithed.block
tag @s add simplenergy.custom_block
tag @s add simplenergy.advanced_battery
tag @s add simplenergy.vanilla.minecraft_gold_block

# Add a custom name
data merge entity @s {"CustomName": {"translate": "simplenergy.advanced_battery","italic": false,"color": "white"}}

# Modify item display entity to match the custom block
item replace entity @s container.0 with minecraft:furnace[item_model="simplenergy:advanced_battery"]
data modify entity @s transformation.scale set value [1.002f,1.002f,1.002f]
data modify entity @s brightness set value {block:15,sky:15}

# Add balancing tag
tag @s add simplenergy.can_balance

