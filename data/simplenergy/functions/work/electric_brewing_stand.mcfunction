#Store Fuel & BrewTime into a score to change the value
	data modify storage simplenergy:items Temp set from block ~ ~ ~
	execute store result score BrewTime SE_Data run data get storage simplenergy:items Temp.BrewTime
	execute store result score BurnTime SE_Data run data get storage simplenergy:items Temp.Fuel

#Change BrewTime value and use Energy & playsound on work
	execute if score BrewTime SE_Data matches 4.. run scoreboard players remove @s EF_kJ 1
	execute if score BrewTime SE_Data matches 4.. run scoreboard players remove BrewTime SE_Data 3
	execute if score Second SE_Data matches 0 if score BrewTime SE_Data matches 4.. run playsound simplenergy:electric_brewing_stand block @a[distance=..10] ~ ~ ~ 0.25
	execute store result block ~ ~ ~ BrewTime short 1 run scoreboard players get BrewTime SE_Data

#Change Fuel value and use Energy
	scoreboard players add BurnTime SE_Data 1
	execute unless score BrewTime SE_Data matches 4.. unless score BurnTime SE_Data matches 21.. run scoreboard players remove @s EF_kJ 1
	execute if score BurnTime SE_Data matches 21.. run scoreboard players set BurnTime SE_Data 20
	execute store result block ~ ~ ~ Fuel byte 1 run scoreboard players get BurnTime SE_Data

#Change gui texture
	data modify block ~ ~ ~ Items insert 0 value {Slot:4b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:2011936,CustomItem:1s,SE_CustomTextureItem:1s,display:{Name:'[{"text":""}]'}}}
