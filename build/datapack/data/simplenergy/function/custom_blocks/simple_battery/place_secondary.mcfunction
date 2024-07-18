
#> simplenergy:custom_blocks/simple_battery/place_secondary
#
# @within	simplenergy:custom_blocks/simple_battery/place_main
#

# Add convention and utils tags, and the custom block tag
tag @s add global.ignore
tag @s add global.ignore.kill
tag @s add smithed.entity
tag @s add smithed.block
tag @s add simplenergy.custom_block
tag @s add simplenergy.simple_battery
tag @s add simplenergy.vanilla.minecraft_copper_block

# Modify item display entity to match the custom block
item replace entity @s container.0 with minecraft:furnace[minecraft:custom_model_data=2012019]
data modify entity @s transformation.scale set value [1.002f,1.008f,1.002f]
data modify entity @s transformation.translation[1] set value 0.003f
data modify entity @s brightness set value {block:15,sky:15}

# Energy part
tag @s add simplenergy.battery_switcher
tag @s add energy.receive
tag @s add energy.send
data modify storage simplenergy:temp energy set from entity @p[tag=simplenergy.placer] SelectedItem.components."minecraft:custom_data".energy
execute store result score @s energy.max_storage run data get storage simplenergy:temp energy.max_storage
execute store result score @s energy.storage run data get storage simplenergy:temp energy.storage
scoreboard players operation @s energy.transfer_rate = @s energy.max_storage
function energy:v1/api/init_machine

# Add balancing tag
tag @s add simplenergy.can_balance

