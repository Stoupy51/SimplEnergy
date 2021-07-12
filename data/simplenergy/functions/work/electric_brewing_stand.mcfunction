execute store result score BrewTime SE_Timer run data get block ~ ~ ~ BrewTime
execute store result score Fuel SE_Timer run data get block ~ ~ ~ Fuel
execute if score BrewTime SE_Timer matches 4.. run scoreboard players remove @s EF_Joule 1
execute if score BrewTime SE_Timer matches 4.. run scoreboard players remove BrewTime SE_Timer 3
execute if score Second SE_Timer matches 0 if score BrewTime SE_Timer matches 4.. run playsound simplenergy:electric_brewing_stand block @a[distance=..10] ~ ~ ~ 0.25
execute store result block ~ ~ ~ BrewTime short 1 run scoreboard players get BrewTime SE_Timer

scoreboard players add Fuel SE_Timer 1
execute unless score BrewTime SE_Timer matches 4.. unless score Fuel SE_Timer matches 21.. run scoreboard players remove @s EF_Joule 1
execute if score Fuel SE_Timer matches 21.. run scoreboard players set Fuel SE_Timer 20
execute store result block ~ ~ ~ Fuel byte 1 run scoreboard players get Fuel SE_Timer

data modify block ~ ~ ~ Items insert 0 value {Slot:4b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:2011936,SE_CustomTextureItem:1b,display:{Name:'[{"text":"","italic":false}]'}}}

