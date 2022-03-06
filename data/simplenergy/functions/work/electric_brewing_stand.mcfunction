#Store Fuel & BrewTime into a score to change the value
	data modify storage simplenergy:items all.Temp set from block ~ ~ ~
	execute store result score BrewTime simplenergy.data run data get storage simplenergy:items all.Temp.BrewTime
	execute store result score BurnTime simplenergy.data run data get storage simplenergy:items all.Temp.Fuel

#Change BrewTime value and use Energy & playsound on work
	execute if score BrewTime simplenergy.data matches 4.. run scoreboard players remove @s energy.storage 1
	execute if score BrewTime simplenergy.data matches 4.. run scoreboard players remove BrewTime simplenergy.data 3
	execute if score Second simplenergy.data matches 0 if score BrewTime simplenergy.data matches 4.. run playsound simplenergy:electric_brewing_stand block @a[distance=..10] ~ ~ ~ 0.25
	execute store result block ~ ~ ~ BrewTime short 1 run scoreboard players get BrewTime simplenergy.data

#Change Fuel value and use Energy
	scoreboard players add BurnTime simplenergy.data 1
	execute unless score BrewTime simplenergy.data matches 4.. unless score BurnTime simplenergy.data matches 21.. run scoreboard players remove @s energy.storage 1
	execute if score BurnTime simplenergy.data matches 21.. run scoreboard players set BurnTime simplenergy.data 20
	execute store result block ~ ~ ~ Fuel byte 1 run scoreboard players get BurnTime simplenergy.data

#Change gui texture
	data modify block ~ ~ ~ Items insert 0 value {Slot:4b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:2011936,simplenergy:{texture_item:1b},display:{Name:'[{"text":""}]'}}}
