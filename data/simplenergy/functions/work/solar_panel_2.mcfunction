scoreboard players add Count simplenergy.data 1
execute unless block ~ ~ ~ #simplenergy:non_solid run scoreboard players set temp simplenergy.data 0
execute if score Count simplenergy.data matches ..100 if block ~ ~ ~ #simplenergy:non_solid positioned ~ ~1 ~ run function simplenergy:work/solar_panel_2
