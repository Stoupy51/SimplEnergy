
execute unless block ~ ~ ~ #simplenergy:wrench_raycast run function simplenergy:right_click/wrench/stop_case
execute if entity @s[distance=..5] if block ~ ~ ~ #simplenergy:wrench_raycast positioned ^ ^ ^.2 run function simplenergy:right_click/wrench/raycast
