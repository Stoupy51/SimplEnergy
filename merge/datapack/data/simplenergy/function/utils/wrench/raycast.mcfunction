
# Stop case when raycast hits a block that is from wrench_raycast tag
execute unless block ~ ~ ~ #simplenergy:non_solid align xyz run function simplenergy:utils/wrench/stop_case

# Continue raycast until it hits a block that is solid or the max distance is reached
execute if score #raycast simplenergy.data matches 0 if entity @s[distance=..5] if block ~ ~ ~ #simplenergy:non_solid positioned ^ ^ ^.2 run function simplenergy:utils/wrench/raycast

