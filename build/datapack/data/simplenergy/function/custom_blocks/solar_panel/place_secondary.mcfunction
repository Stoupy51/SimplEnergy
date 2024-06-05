
#> simplenergy:custom_blocks/solar_panel/place_secondary
#
# @within	simplenergy:custom_blocks/solar_panel/place_main
#

# Add convention and utils tags, and the custom block tag
tag @s add global.ignore
tag @s add global.ignore.kill
tag @s add smithed.entity
tag @s add smithed.block
tag @s add simplenergy.custom_block
tag @s add simplenergy.solar_panel
tag @s add simplenergy.vanilla.minecraft_daylight_detector

# Modify item display entity to match the custom block
item replace entity @s container.0 with minecraft:furnace[minecraft:custom_model_data=2012025]
data modify entity @s transformation.scale set value [1.002f,1.008f,1.002f]
data modify entity @s transformation.translation[1] set value 0.003f
data modify entity @s brightness set value {block:15,sky:15}

# Energy part
tag @s add energy.send
scoreboard players set @s energy.max_storage 600
scoreboard players operation @s energy.transfer_rate = @s energy.max_storage
scoreboard players add @s energy.storage 0
scoreboard players add @s energy.change_rate 0
function energy:v1/api/init_machine

# Add balancing tag
tag @s add simplenergy.can_balance
# Add tag for loop every second
tag @s add simplenergy.second

