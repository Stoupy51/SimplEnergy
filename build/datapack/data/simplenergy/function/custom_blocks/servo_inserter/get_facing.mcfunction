
#> simplenergy:custom_blocks/servo_inserter/get_facing
#
# @executed	as @e[type=item_frame,tag=...] & at @s
#
# @within	simplenergy:custom_blocks/servo_inserter/place_main
#

# Get the facing and delete the old entity
execute store result score #item_frame_facing simplenergy.data run data get entity @s Facing
kill @s

