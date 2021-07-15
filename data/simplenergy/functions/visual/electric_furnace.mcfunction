execute store result score CookTime SE_Timer run data get block ~ ~ ~ CookTime
execute unless block ~ ~ ~ minecraft:furnace{Items:[{Slot:0b}]} run function simplenergy:visual/electric_furnace_0
execute if block ~ ~ ~ minecraft:furnace{Items:[{Slot:0b}]} run function simplenergy:visual/electric_furnace_1

execute if score CookTime SE_Timer matches 0 run data modify entity @s Item.tag.CustomModelData set value 2012200
execute unless score CookTime SE_Timer matches 0 run data modify entity @s Item.tag.CustomModelData set value 2012201
