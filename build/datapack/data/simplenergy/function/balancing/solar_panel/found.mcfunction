
#> simplenergy:balancing/solar_panel/found
#
# @executed	as @e[tag=...,dx=0,dy=0,dz=0] & at @s
#
# @within	simplenergy:balancing/solar_panel/found [ as @e[tag=...,dx=0,dy=0,dz=0] & at @s ]
#			simplenergy:balancing/solar_panel/main
#

# Add tags and scores
tag @s add simplenergy.adjacent
tag @s add simplenergy.balanced
scoreboard players add #count simplenergy.data 1
scoreboard players operation #total_energy simplenergy.data += @s energy.storage

# Check nearby solar_panel recursively
execute align xyz positioned ~ ~1 ~ as @e[tag=simplenergy.solar_panel,tag=simplenergy.can_balance,tag=!simplenergy.adjacent,dx=0,dy=0,dz=0] if score @s energy.max_storage = #max_storage simplenergy.data at @s run function simplenergy:balancing/solar_panel/found
execute align xyz positioned ~ ~-1 ~ as @e[tag=simplenergy.solar_panel,tag=simplenergy.can_balance,tag=!simplenergy.adjacent,dx=0,dy=0,dz=0] if score @s energy.max_storage = #max_storage simplenergy.data at @s run function simplenergy:balancing/solar_panel/found
execute align xyz positioned ~ ~ ~1 as @e[tag=simplenergy.solar_panel,tag=simplenergy.can_balance,tag=!simplenergy.adjacent,dx=0,dy=0,dz=0] if score @s energy.max_storage = #max_storage simplenergy.data at @s run function simplenergy:balancing/solar_panel/found
execute align xyz positioned ~ ~ ~-1 as @e[tag=simplenergy.solar_panel,tag=simplenergy.can_balance,tag=!simplenergy.adjacent,dx=0,dy=0,dz=0] if score @s energy.max_storage = #max_storage simplenergy.data at @s run function simplenergy:balancing/solar_panel/found
execute align xyz positioned ~1 ~ ~ as @e[tag=simplenergy.solar_panel,tag=simplenergy.can_balance,tag=!simplenergy.adjacent,dx=0,dy=0,dz=0] if score @s energy.max_storage = #max_storage simplenergy.data at @s run function simplenergy:balancing/solar_panel/found
execute align xyz positioned ~-1 ~ ~ as @e[tag=simplenergy.solar_panel,tag=simplenergy.can_balance,tag=!simplenergy.adjacent,dx=0,dy=0,dz=0] if score @s energy.max_storage = #max_storage simplenergy.data at @s run function simplenergy:balancing/solar_panel/found

