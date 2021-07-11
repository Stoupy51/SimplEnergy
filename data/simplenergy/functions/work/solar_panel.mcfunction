execute if score DayTime SE_Timer matches 13500..22500 run scoreboard players add @s EF_Joule 1
execute unless score DayTime SE_Timer matches 13500..22500 run scoreboard players add @s EF_Joule 4

execute if score @s EF_Joule matches 600.. run scoreboard players set @s EF_Joule 600
