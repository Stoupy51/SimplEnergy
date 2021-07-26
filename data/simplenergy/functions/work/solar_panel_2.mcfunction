scoreboard players add Count SE_Data 1
execute unless block ~ ~ ~ #simplenergy:non_solid run scoreboard players set YES SE_Data 0
execute if score Count SE_Data matches ..100 if block ~ ~ ~ #simplenergy:non_solid positioned ~ ~1 ~ run function simplenergy:work/solar_panel_2
