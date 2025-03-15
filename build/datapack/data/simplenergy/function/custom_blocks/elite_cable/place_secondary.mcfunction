
#> simplenergy:custom_blocks/elite_cable/place_secondary
#
# @within	simplenergy:custom_blocks/elite_cable/place_main
#

# Add convention and utils tags, and the custom block tag
tag @s add global.ignore
tag @s add global.ignore.kill
tag @s add smithed.entity
tag @s add smithed.block
tag @s add simplenergy.custom_block
tag @s add simplenergy.elite_cable
tag @s add simplenergy.vanilla.minecraft_player_head

# Add a custom name
data merge entity @s {"CustomName": {"translate":"simplenergy.elite_cable","italic": false,"color": "white"}}


# Modify item display entity to match the custom block
data modify entity @s transformation.scale set value [1.002f,1.002f,1.002f]
data modify entity @s brightness set value {block:15,sky:15}

tag @s add energy.cable
scoreboard players set @s energy.transfer_rate 240
function energy:v1/api/init_cable

# Cable rotation for models
data modify entity @s item_display set value "fixed"

