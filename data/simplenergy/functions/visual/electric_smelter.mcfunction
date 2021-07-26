#Update gui depends on CookTime
    execute store result score CookTime SE_Data run data get block ~ ~ ~ CookTime
    execute unless block ~ ~ ~ minecraft:furnace{Items:[{Slot:0b}]} run function simplenergy:visual/electric_smelter_0
    execute if block ~ ~ ~ minecraft:furnace{Items:[{Slot:0b}]} run function simplenergy:visual/electric_smelter_1

    execute if score CookTime SE_Data matches 0 run data modify entity @s Item.tag.CustomModelData set value 2012202
    execute unless score CookTime SE_Data matches 0 run data modify entity @s Item.tag.CustomModelData set value 2012203
