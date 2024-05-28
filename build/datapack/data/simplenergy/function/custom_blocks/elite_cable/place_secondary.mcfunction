
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

# Modify item display entity to match the custom block
data modify entity @s transformation.scale set value [1.002f,1.008f,1.002f]
data modify entity @s transformation.translation[1] set value 0.003f
data modify entity @s brightness set value {block:15,sky:15}

tag @s add energy.cable
scoreboard players set @s energy.transfer_rate 120
function energy:v1/api/init_cable

