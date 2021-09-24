execute unless block ~ ~ ~ #simplenergy:non_solid run function simplenergy:work/joulemeter_2
execute as @s[distance=..5] if block ~ ~ ~ #simplenergy:non_solid positioned ^ ^ ^.2 run function simplenergy:work/joulemeter_raycast
