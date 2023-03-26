
# Add tags and scores
tag @s add simplenergy.balance
tag @s add simplenergy.balanced
scoreboard players add #count simplenergy.data 1
scoreboard players operation #amount simplenergy.data += @s energy.storage

# Collect power from nearby blocks recursively
execute align xyz positioned ~ ~1 ~ as @e[tag=!simplenergy.balance,tag=!simplenergy.balanced,tag=simplenergy.balancing,dx=0,dy=0,dz=0] if score @s energy.max_storage = #temp simplenergy.data at @s run function simplenergy:balance/found
execute align xyz positioned ~ ~-1 ~ as @e[tag=!simplenergy.balance,tag=!simplenergy.balanced,tag=simplenergy.balancing,dx=0,dy=0,dz=0] if score @s energy.max_storage = #temp simplenergy.data at @s run function simplenergy:balance/found
execute align xyz positioned ~ ~ ~1 as @e[tag=!simplenergy.balance,tag=!simplenergy.balanced,tag=simplenergy.balancing,dx=0,dy=0,dz=0] if score @s energy.max_storage = #temp simplenergy.data at @s run function simplenergy:balance/found
execute align xyz positioned ~ ~ ~-1 as @e[tag=!simplenergy.balance,tag=!simplenergy.balanced,tag=simplenergy.balancing,dx=0,dy=0,dz=0] if score @s energy.max_storage = #temp simplenergy.data at @s run function simplenergy:balance/found
execute align xyz positioned ~1 ~ ~ as @e[tag=!simplenergy.balance,tag=!simplenergy.balanced,tag=simplenergy.balancing,dx=0,dy=0,dz=0] if score @s energy.max_storage = #temp simplenergy.data at @s run function simplenergy:balance/found
execute align xyz positioned ~-1 ~ ~ as @e[tag=!simplenergy.balance,tag=!simplenergy.balanced,tag=simplenergy.balancing,dx=0,dy=0,dz=0] if score @s energy.max_storage = #temp simplenergy.data at @s run function simplenergy:balance/found

