execute unless block ~ ~ ~ minecraft:furnace{Items:[{Slot:0b}]} run function simplenergy:visual/electric_furnace_0
execute if block ~ ~ ~ minecraft:furnace{Items:[{Slot:0b}]} run function simplenergy:visual/electric_furnace_1

execute if block ~ ~ ~ minecraft:furnace{BurnTime:0s} run data modify entity @s ArmorItems[3].tag.CustomModelData set value 2012300
execute unless block ~ ~ ~ minecraft:furnace{BurnTime:0s} run data modify entity @s ArmorItems[3].tag.CustomModelData set value 2012301
