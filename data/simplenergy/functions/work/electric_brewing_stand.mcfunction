#Store Fuel & BrewTime into a score to change the value
	data modify storage simplenergy:items temp set from block ~ ~ ~
	execute store result score #brew_time simplenergy.data run data get storage simplenergy:items temp.BrewTime
	execute store result score #burn_time simplenergy.data run data get storage simplenergy:items temp.Fuel

#Change BrewTime value and use Energy & playsound on work
	execute if score #brew_time simplenergy.data matches 4.. run scoreboard players remove @s energy.storage 1
	execute if score #brew_time simplenergy.data matches 4.. run scoreboard players remove #brew_time simplenergy.data 3
	execute if score #second simplenergy.data matches 0 if score #brew_time simplenergy.data matches 4.. run playsound simplenergy:electric_brewing_stand block @a[distance=..10] ~ ~ ~ 0.25
	execute store result block ~ ~ ~ BrewTime short 1 run scoreboard players get #brew_time simplenergy.data

#Change Fuel value and use Energy
	scoreboard players add #burn_time simplenergy.data 1
	execute unless score #brew_time simplenergy.data matches 4.. unless score #burn_time simplenergy.data matches 21.. run scoreboard players remove @s energy.storage 1
	execute if score #burn_time simplenergy.data matches 21.. run scoreboard players set #burn_time simplenergy.data 20
	execute store result block ~ ~ ~ Fuel byte 1 run scoreboard players get #burn_time simplenergy.data

#Change gui texture
	data modify block ~ ~ ~ Items insert 0 value {Slot:4b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:2011936,simplenergy:{texture_item:1b},display:{Name:'[{"text":""}]'}}}
