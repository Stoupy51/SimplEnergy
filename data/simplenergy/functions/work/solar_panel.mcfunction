#Check if there is no block above
	scoreboard players set #count simplenergy.data 1
	scoreboard players set #temp simplenergy.data 1
	execute positioned ~ ~1 ~ run function simplenergy:work/solar_panel_2

#Produce Energy depends on DayTime
execute if score #temp simplenergy.data matches 1 if score #day_time simplenergy.data matches 13500..22500 run scoreboard players add @s energy.storage 1
execute if score #temp simplenergy.data matches 1 unless score #day_time simplenergy.data matches 13500..22500 run scoreboard players add @s energy.storage 4

execute if score @s energy.storage matches 600.. run scoreboard players set @s energy.storage 600
