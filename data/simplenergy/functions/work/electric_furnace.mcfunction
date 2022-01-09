#Store CookTime & BurnTime into a score to change the value
	data modify storage simplenergy:items all.Temp set from block ~ ~ ~
	execute store result score CookTime SimplEnergy_Data run data get storage simplenergy:items all.Temp.CookTime
	execute store result score BurnTime SimplEnergy_Data run data get storage simplenergy:items all.Temp.BurnTime

#Change CookTime value and use Energy & playsound on work
	execute if score CookTime SimplEnergy_Data matches 1.. run scoreboard players remove @s energy.storage 10
	execute if score CookTime SimplEnergy_Data matches 1.. run scoreboard players add CookTime SimplEnergy_Data 10
	execute if score CookTime SimplEnergy_Data matches 1.. run playsound simplenergy:electric_furnace block @a[distance=..10] ~ ~ ~ 0.25
	execute if score CookTime SimplEnergy_Data matches 200.. run scoreboard players set CookTime SimplEnergy_Data 199
	execute store result block ~ ~ ~ CookTime short 1 run scoreboard players get CookTime SimplEnergy_Data

#Change BurnTime value and use Energy
	scoreboard players add BurnTime SimplEnergy_Data 21
	execute if score BurnTime SimplEnergy_Data matches 221.. run scoreboard players set BurnTime SimplEnergy_Data 220
	execute store result block ~ ~ ~ BurnTime short 1 run scoreboard players get BurnTime SimplEnergy_Data

#Change gui texture
	data modify block ~ ~ ~ Items insert 0 value {Slot:1b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:2011998,CustomItem:1b,SimplEnergy_CustomItem:1b,SimplEnergy_CustomTextureItem:1b,display:{Name:'[{"text":""}]'}}}
