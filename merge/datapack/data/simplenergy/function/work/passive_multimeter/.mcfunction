
# Stop case when raycast hits a block that is solid
execute unless block ~ ~ ~ #simplenergy:non_solid run function simplenergy:work/passive_multimeter/stop_case

# Continue raycast until it hits a block that is solid or the max distance is reached
execute if entity @s[distance=..5] if block ~ ~ ~ #simplenergy:non_solid positioned ^ ^ ^.5 run function simplenergy:work/passive_multimeter/

