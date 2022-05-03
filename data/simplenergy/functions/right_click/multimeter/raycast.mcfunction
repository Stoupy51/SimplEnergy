
execute unless block ~ ~ ~ #simplenergy:non_solid run function simplenergy:right_click/multimeter/stop_case
execute if entity @s[distance=..5] if block ~ ~ ~ #simplenergy:non_solid positioned ^ ^ ^.2 run function simplenergy:right_click/multimeter/raycast
