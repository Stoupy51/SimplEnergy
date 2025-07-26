
#> simplenergy:custom_blocks/_groups/minecraft_item_frame
#
# @executed	as @e[type=item_display,tag=...,predicate=!simplenergy:check_vanilla_blocks] & at @s
#
# @within	simplenergy:custom_blocks/destroy
#			simplenergy:calls/common_signals/item_frame_destroy_alt [ as @n[type=item,nbt={Item:{id:"minecraft:item_frame"}},distance=..1] ]
#

execute if score #total_servo_extractor simplenergy.data matches 1.. if entity @s[tag=simplenergy.servo_extractor] run function simplenergy:custom_blocks/servo_extractor/destroy
execute if score #total_servo_inserter simplenergy.data matches 1.. if entity @s[tag=simplenergy.servo_inserter] run function simplenergy:custom_blocks/servo_inserter/destroy

