#Check if there is no block above
    scoreboard players set Count SE_Data 1
    scoreboard players set YES SE_Data 1
    execute positioned ~ ~1 ~ run function simplenergy:work/solar_panel_2

#Produce Energy depends on DayTime
execute if score YES SE_Data matches 1 if score DayTime SE_Data matches 13500..22500 run scoreboard players add @s EF_Joule 1
execute if score YES SE_Data matches 1 unless score DayTime SE_Data matches 13500..22500 run scoreboard players add @s EF_Joule 4

execute if score @s EF_Joule matches 600.. run scoreboard players set @s EF_Joule 600
