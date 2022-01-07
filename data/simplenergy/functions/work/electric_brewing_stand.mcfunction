#Store Fuel & BrewTime into a score to change the value
	data modify storage simplenergy:items all.Temp set from block ~ ~ ~
	execute store result score BrewTime SimplEnergy_Data run data get storage simplenergy:items all.Temp.BrewTime
	execute store result score BurnTime SimplEnergy_Data run data get storage simplenergy:items all.Temp.Fuel

#Change BrewTime value and use Energy & playsound on work
	execute if score BrewTime SimplEnergy_Data matches 4.. run scoreboard players remove @s energy.storage 1
	execute if score BrewTime SimplEnergy_Data matches 4.. run scoreboard players remove BrewTime SimplEnergy_Data 3
	execute if score Second SimplEnergy_Data matches 0 if score BrewTime SimplEnergy_Data matches 4.. run playsound simplenergy:electric_brewing_stand block @a[distance=..10] ~ ~ ~ 0.25
	execute store result block ~ ~ ~ BrewTime short 1 run scoreboard players get BrewTime SimplEnergy_Data

#Change Fuel value and use Energy
	scoreboard players add BurnTime SimplEnergy_Data 1
	execute unless score BrewTime SimplEnergy_Data matches 4.. unless score BurnTime SimplEnergy_Data matches 21.. run scoreboard players remove @s energy.storage 1
	execute if score BurnTime SimplEnergy_Data matches 21.. run scoreboard players set BurnTime SimplEnergy_Data 20
	execute store result block ~ ~ ~ Fuel byte 1 run scoreboard players get BurnTime SimplEnergy_Data

#Change gui texture
	data modify block ~ ~ ~ Items insert 0 value {Slot:4b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:2011936,Stoupy_CustomItem:1b,StardustFragment_CustomItem:1b,SimplEnergy_CustomTextureItem:1b,display:{Name:'[{"text":""}]'}}}
