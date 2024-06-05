
#> simplenergy:balancing/simple_battery/found
#
# @within	simplenergy:balancing/simple_battery/found
#			simplenergy:balancing/simple_battery/main
#

# Add tags and scores
tag @s add simplenergy.adjacent
tag @s add simplenergy.balanced
scoreboard players add #count simplenergy.data 1
scoreboard players operation #total_energy simplenergy.data += @s energy.storage

# Check nearby simple_battery recursively
execute align xyz positioned ~ ~1 ~ as @e[tag=simplenergy.simple_battery,tag=simplenergy.can_balance,tag=!simplenergy.adjacent,dx=0,dy=0,dz=0] if score @s energy.max_storage = #max_storage simplenergy.data at @s run function simplenergy:balancing/simple_battery/found
execute align xyz positioned ~ ~-1 ~ as @e[tag=simplenergy.simple_battery,tag=simplenergy.can_balance,tag=!simplenergy.adjacent,dx=0,dy=0,dz=0] if score @s energy.max_storage = #max_storage simplenergy.data at @s run function simplenergy:balancing/simple_battery/found
execute align xyz positioned ~ ~ ~1 as @e[tag=simplenergy.simple_battery,tag=simplenergy.can_balance,tag=!simplenergy.adjacent,dx=0,dy=0,dz=0] if score @s energy.max_storage = #max_storage simplenergy.data at @s run function simplenergy:balancing/simple_battery/found
execute align xyz positioned ~ ~ ~-1 as @e[tag=simplenergy.simple_battery,tag=simplenergy.can_balance,tag=!simplenergy.adjacent,dx=0,dy=0,dz=0] if score @s energy.max_storage = #max_storage simplenergy.data at @s run function simplenergy:balancing/simple_battery/found
execute align xyz positioned ~1 ~ ~ as @e[tag=simplenergy.simple_battery,tag=simplenergy.can_balance,tag=!simplenergy.adjacent,dx=0,dy=0,dz=0] if score @s energy.max_storage = #max_storage simplenergy.data at @s run function simplenergy:balancing/simple_battery/found
execute align xyz positioned ~-1 ~ ~ as @e[tag=simplenergy.simple_battery,tag=simplenergy.can_balance,tag=!simplenergy.adjacent,dx=0,dy=0,dz=0] if score @s energy.max_storage = #max_storage simplenergy.data at @s run function simplenergy:balancing/simple_battery/found

