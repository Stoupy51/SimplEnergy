
execute unless block ~ ~ ~ #simplenergy:non_solid run function simplenergy:work/passive_multimeter/stop_case
execute if entity @s[distance=..5] if block ~ ~ ~ #simplenergy:non_solid positioned ^ ^ ^.5 run function simplenergy:work/passive_multimeter/
