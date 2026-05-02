
#> simplenergy:custom_blocks/check_light
#
# @executed	positioned ~ ~1 ~
#
# @within	simplenergy:custom_blocks/compute_brightness [ positioned ~ ~1 ~ ]
#			simplenergy:custom_blocks/compute_brightness [ positioned ~ ~-1 ~ ]
#			simplenergy:custom_blocks/compute_brightness [ positioned ~1 ~ ~ ]
#			simplenergy:custom_blocks/compute_brightness [ positioned ~-1 ~ ~ ]
#			simplenergy:custom_blocks/compute_brightness [ positioned ~ ~ ~1 ]
#			simplenergy:custom_blocks/compute_brightness [ positioned ~ ~ ~-1 ]
#

# Check light level at current position and update #light if higher
execute if score #light simplenergy.data matches ..0 if predicate simplenergy:light/1 run return run scoreboard players set #light simplenergy.data 1
execute if score #light simplenergy.data matches ..1 if predicate simplenergy:light/2 run return run scoreboard players set #light simplenergy.data 2
execute if score #light simplenergy.data matches ..2 if predicate simplenergy:light/3 run return run scoreboard players set #light simplenergy.data 3
execute if score #light simplenergy.data matches ..3 if predicate simplenergy:light/4 run return run scoreboard players set #light simplenergy.data 4
execute if score #light simplenergy.data matches ..4 if predicate simplenergy:light/5 run return run scoreboard players set #light simplenergy.data 5
execute if score #light simplenergy.data matches ..5 if predicate simplenergy:light/6 run return run scoreboard players set #light simplenergy.data 6
execute if score #light simplenergy.data matches ..6 if predicate simplenergy:light/7 run return run scoreboard players set #light simplenergy.data 7
execute if score #light simplenergy.data matches ..7 if predicate simplenergy:light/8 run return run scoreboard players set #light simplenergy.data 8
execute if score #light simplenergy.data matches ..8 if predicate simplenergy:light/9 run return run scoreboard players set #light simplenergy.data 9
execute if score #light simplenergy.data matches ..9 if predicate simplenergy:light/10 run return run scoreboard players set #light simplenergy.data 10
execute if score #light simplenergy.data matches ..10 if predicate simplenergy:light/11 run return run scoreboard players set #light simplenergy.data 11
execute if score #light simplenergy.data matches ..11 if predicate simplenergy:light/12 run return run scoreboard players set #light simplenergy.data 12
execute if score #light simplenergy.data matches ..12 if predicate simplenergy:light/13 run return run scoreboard players set #light simplenergy.data 13
execute if score #light simplenergy.data matches ..13 if predicate simplenergy:light/14 run return run scoreboard players set #light simplenergy.data 14
execute if score #light simplenergy.data matches ..14 if predicate simplenergy:light/15 run return run scoreboard players set #light simplenergy.data 15

