
#> simplenergy:custom_blocks/servo_extractor/destroy
#
# @executed	as @e[type=item_display,tag=...,predicate=!simplenergy:check_vanilla_blocks] & at @s
#
# @within	simplenergy:custom_blocks/_groups/minecraft_item_frame
#

# Replace the item with the custom one
execute as @n[type=item,nbt={Item:{components:{"minecraft:custom_data":{"simplenergy":{"item_frame_destroy":true}}}}},distance=..1] run function simplenergy:custom_blocks/servo_extractor/replace_item

# Decrease count scores
scoreboard players remove #total_custom_blocks simplenergy.data 1
scoreboard players remove #total_vanilla_item_frame simplenergy.data 1
scoreboard players remove #total_servo_extractor simplenergy.data 1

# Kill the custom block entity
kill @s

# Servo mechanism destruction cleanup
function #itemio:calls/servos/destroy

