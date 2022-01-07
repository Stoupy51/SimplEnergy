scoreboard players set Crafted SimplEnergy_Data2 0
scoreboard players set Count SimplEnergy_Data2 0
execute store result score Crafted SimplEnergy_Data2 run data get storage simplenergy:items all.Crafting[{Slot:16b}].tag.CustomModelData
execute store result score Count SimplEnergy_Data2 run data get storage simplenergy:items all.Crafting[{Slot:16b}].Count
execute if score @s SimplEnergy_Data = Crafted SimplEnergy_Data2 unless score Count SimplEnergy_Data2 = @s SimplEnergy_Data2 run function simplenergy:craft/crafted
execute unless score @s SimplEnergy_Data = Crafted SimplEnergy_Data2 run function simplenergy:craft/crafted
execute unless score @s SimplEnergy_Data2 = Count SimplEnergy_Data2 run function simplenergy:craft/drop
