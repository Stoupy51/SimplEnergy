
#> simplenergy:custom_blocks/servo_inserter/place_main
#
# @executed	as @e[type=item_frame,tag=...] & at @s
#
# @within	simplenergy:custom_blocks/servo_inserter/search [ as @e[type=item_frame,tag=...] & at @s ]
#

# Get the facing direction of the item frame
scoreboard players set #item_frame_facing simplenergy.data 1
execute if entity @s[type=item_frame] run function simplenergy:custom_blocks/servo_inserter/get_facing

# Summon the new item frame (not execute summon because it would not be invisible for a tick)
summon item_frame ~ ~ ~ {Tags:["simplenergy.new"],Invulnerable:false,Invisible:true,Fixed:false,Silent:true}
execute as @n[tag=simplenergy.new] at @s run function simplenergy:custom_blocks/servo_inserter/place_secondary

# Increment count scores
scoreboard players add #total_custom_blocks simplenergy.data 1
scoreboard players add #total_vanilla_item_frame simplenergy.data 1
scoreboard players add #total_servo_inserter simplenergy.data 1

# Replace the placing sound
playsound minecraft:block.stone.place block @a[distance=..5]

