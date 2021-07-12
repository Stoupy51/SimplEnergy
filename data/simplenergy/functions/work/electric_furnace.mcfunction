execute store result score CookTime SE_Timer run data get block ~ ~ ~ CookTime
execute store result score BurnTime SE_Timer run data get block ~ ~ ~ BurnTime
execute if score CookTime SE_Timer matches 1.. run scoreboard players remove @s EF_Joule 10
execute if score CookTime SE_Timer matches 1.. run scoreboard players add CookTime SE_Timer 10
execute if score CookTime SE_Timer matches 1.. run playsound simplenergy:electric_furnace block @a[distance=..10] ~ ~ ~ 0.25
execute if score CookTime SE_Timer matches 200.. run scoreboard players set CookTime SE_Timer 199
execute store result block ~ ~ ~ CookTime short 1 run scoreboard players get CookTime SE_Timer

scoreboard players add BurnTime SE_Timer 21
execute unless score CookTime SE_Timer matches 1.. unless score BurnTime SE_Timer matches 221.. run scoreboard players remove @s EF_Joule 10
execute if score BurnTime SE_Timer matches 221.. run scoreboard players set BurnTime SE_Timer 220
execute store result block ~ ~ ~ BurnTime short 1 run scoreboard players get BurnTime SE_Timer

data modify block ~ ~ ~ Items insert 0 value {Slot:1b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:2011998,SE_CustomTextureItem:1b,display:{Name:'[{"text":"","italic":false}]'}}}
