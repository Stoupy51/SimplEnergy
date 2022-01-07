#Check if there is no block above
	scoreboard players set Count SimplEnergy_Data 1
	scoreboard players set Temp SimplEnergy_Data 1
	execute positioned ~ ~1 ~ run function simplenergy:work/solar_panel_2

#Produce Energy depends on DayTime
execute if score Temp SimplEnergy_Data matches 1 if score DayTime SimplEnergy_Data matches 13500..22500 run scoreboard players add @s energy.storage 1
execute if score Temp SimplEnergy_Data matches 1 unless score DayTime SimplEnergy_Data matches 13500..22500 run scoreboard players add @s energy.storage 4

execute if score @s energy.storage matches 600.. run scoreboard players set @s energy.storage 600
