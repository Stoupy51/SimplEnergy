
#> simplenergy:custom_blocks/servo_inserter/search
#
# @executed	as the player & at current position
#
# @within	advancement simplenergy:custom_block_alternative/servo_inserter
#

# Advancement revoke
advancement revoke @s only simplenergy:custom_block_alternative/servo_inserter

# Execute the place function as and at the new placed item frame
execute as @e[type=item_frame,tag=simplenergy.new,tag=simplenergy.servo_inserter] at @s run function simplenergy:custom_blocks/servo_inserter/place_main

