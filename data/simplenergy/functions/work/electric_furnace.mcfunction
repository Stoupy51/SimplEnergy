execute if data block ~ ~ ~ Items[{Slot:0b}] run scoreboard players remove @s EF_Joule 10
execute if data block ~ ~ ~ Items[{Slot:0b}] run data merge block ~ ~ ~ {BurnTime:210s}
execute if data block ~ ~ ~ Items[{Slot:0b}] run data merge block ~ ~ ~ {BurnTime:210s}
data modify block ~ ~ ~ Items insert 0 value {Slot:1b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:2011998,SE_CustomTextureItem:1b,display:{Name:'[{"text":"","italic":false}]'}}}


execute store result score CookTime EF_Temp run data get block ~ ~ ~ CookTime
scoreboard players add CookTime EF_Temp 10
execute if score CookTime EF_Temp matches 200.. run scoreboard players set CookTime EF_Temp 199
execute if score CookTime EF_Temp matches 11.. store result block ~ ~ ~ CookTime int 1 run scoreboard players get CookTime EF_Temp
