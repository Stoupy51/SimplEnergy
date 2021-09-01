scoreboard players add Count SE_JoulemeterUse 1
execute unless block ~ ~ ~ #simplenergy:non_solid run function simplenergy:work/joulemeter_2
execute if score Count SE_JoulemeterUse matches ..25 if block ~ ~ ~ #simplenergy:non_solid positioned ^ ^ ^.2 run function simplenergy:work/joulemeter_raycast
