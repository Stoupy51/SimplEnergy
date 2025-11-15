
#> simplenergy:custom_blocks/servo_extractor/place_secondary
#
# @executed	as @n[tag=simplenergy.new] & at @s
#
# @within	simplenergy:custom_blocks/servo_extractor/place_main [ as @n[tag=simplenergy.new] & at @s ]
#

# Add convention and utils tags, and the custom block tag
tag @s remove simplenergy.new
tag @s add global.ignore
tag @s add global.ignore.kill
tag @s add smithed.entity
tag @s add smithed.block
tag @s add simplenergy.custom_block
tag @s add simplenergy.servo_extractor
tag @s add simplenergy.vanilla.minecraft_item_frame

# Add a custom name
data merge entity @s {"CustomName": {"translate": "simplenergy.servo_extractor"}}

# Modify item frame entity to match the custom block
item replace entity @s contents with minecraft:furnace[item_model="simplenergy:servo_extractor",custom_data={simplenergy:{item_frame_destroy:true,alt_destroy:"simplenergy.servo_extractor"}}]
execute store result entity @s Facing byte 1 run scoreboard players get #item_frame_facing simplenergy.data

# Update position (fixes a Minecraft bug)
execute at @s run tp @s ^ ^ ^0.1

# Servo mechanism setup (1 item by 1 item: stack_limit)
tag @s add itemio.servo.extract
tag @s add itemio.servo
tag @s add simplenergy.servo
scoreboard players set @s itemio.servo.stack_limit 4
scoreboard players set @s itemio.servo.retry_limit 1
function #itemio:calls/servos/init

