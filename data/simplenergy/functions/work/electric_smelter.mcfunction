execute store result score CookTime SE_Data run data get block ~ ~ ~ CookTime
execute store result score BurnTime SE_Data run data get block ~ ~ ~ BurnTime
execute if score CookTime SE_Data matches 1.. run scoreboard players remove @s EF_Joule 4
execute if score CookTime SE_Data matches 1.. run scoreboard players add CookTime SE_Data 7
execute if score Second SE_Data matches 0 if score CookTime SE_Data matches 1.. run playsound simplenergy:electric_smelter block @a[distance=..10] ~ ~ ~ 0.25
execute if score CookTime SE_Data matches 200.. run scoreboard players set CookTime SE_Data 199
execute store result block ~ ~ ~ CookTime short 1 run scoreboard players get CookTime SE_Data

scoreboard players add BurnTime SE_Data 2
execute unless score CookTime SE_Data matches 1.. unless score BurnTime SE_Data matches 221.. run scoreboard players remove @s EF_Joule 4
execute if score BurnTime SE_Data matches 221.. run scoreboard players set BurnTime SE_Data 220
execute store result block ~ ~ ~ BurnTime short 1 run scoreboard players get BurnTime SE_Data

data modify block ~ ~ ~ Items insert 0 value {Slot:1b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:2011942,SE_CustomTextureItem:1b,display:{Name:'[{"text":"","italic":false}]'}}}

