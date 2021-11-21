scoreboard players set Crafted SE_Data2 0
scoreboard players set Count SE_Data2 0
execute store result score Crafted SE_Data2 run data get storage simplenergy:items Crafting[{Slot:16b}].tag.CustomModelData
execute store result score Count SE_Data2 run data get storage simplenergy:items Crafting[{Slot:16b}].Count
execute if score @s SE_Data = Crafted SE_Data2 unless score Count SE_Data2 = @s SE_Data2 run function simplenergy:craft/crafted
execute unless score @s SE_Data = Crafted SE_Data2 run function simplenergy:craft/crafted
execute unless score @s SE_Data2 = Count SE_Data2 run function simplenergy:craft/drop
