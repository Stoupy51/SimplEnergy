scoreboard players set Count SimplEnergy_Data 64
scoreboard players set Temp SimplEnergy_Data 64

execute if data storage simplenergy:items all.Crafting[{Slot:2b}] store result score Temp SimplEnergy_Data run data get storage simplenergy:items all.Crafting[{Slot:2b}].Count
execute if score Temp SimplEnergy_Data < Count SimplEnergy_Data run scoreboard players operation Count SimplEnergy_Data = Temp SimplEnergy_Data

execute if data storage simplenergy:items all.Crafting[{Slot:3b}] store result score Temp SimplEnergy_Data run data get storage simplenergy:items all.Crafting[{Slot:3b}].Count
execute if score Temp SimplEnergy_Data < Count SimplEnergy_Data run scoreboard players operation Count SimplEnergy_Data = Temp SimplEnergy_Data

execute if data storage simplenergy:items all.Crafting[{Slot:4b}] store result score Temp SimplEnergy_Data run data get storage simplenergy:items all.Crafting[{Slot:4b}].Count
execute if score Temp SimplEnergy_Data < Count SimplEnergy_Data run scoreboard players operation Count SimplEnergy_Data = Temp SimplEnergy_Data

execute if data storage simplenergy:items all.Crafting[{Slot:11b}] store result score Temp SimplEnergy_Data run data get storage simplenergy:items all.Crafting[{Slot:11b}].Count
execute if score Temp SimplEnergy_Data < Count SimplEnergy_Data run scoreboard players operation Count SimplEnergy_Data = Temp SimplEnergy_Data

execute if data storage simplenergy:items all.Crafting[{Slot:12b}] store result score Temp SimplEnergy_Data run data get storage simplenergy:items all.Crafting[{Slot:12b}].Count
execute if score Temp SimplEnergy_Data < Count SimplEnergy_Data run scoreboard players operation Count SimplEnergy_Data = Temp SimplEnergy_Data

execute if data storage simplenergy:items all.Crafting[{Slot:13b}] store result score Temp SimplEnergy_Data run data get storage simplenergy:items all.Crafting[{Slot:13b}].Count
execute if score Temp SimplEnergy_Data < Count SimplEnergy_Data run scoreboard players operation Count SimplEnergy_Data = Temp SimplEnergy_Data

execute if data storage simplenergy:items all.Crafting[{Slot:20b}] store result score Temp SimplEnergy_Data run data get storage simplenergy:items all.Crafting[{Slot:20b}].Count
execute if score Temp SimplEnergy_Data < Count SimplEnergy_Data run scoreboard players operation Count SimplEnergy_Data = Temp SimplEnergy_Data

execute if data storage simplenergy:items all.Crafting[{Slot:21b}] store result score Temp SimplEnergy_Data run data get storage simplenergy:items all.Crafting[{Slot:21b}].Count
execute if score Temp SimplEnergy_Data < Count SimplEnergy_Data run scoreboard players operation Count SimplEnergy_Data = Temp SimplEnergy_Data

execute if data storage simplenergy:items all.Crafting[{Slot:22b}] store result score Temp SimplEnergy_Data run data get storage simplenergy:items all.Crafting[{Slot:22b}].Count
execute if score Temp SimplEnergy_Data < Count SimplEnergy_Data run scoreboard players operation Count SimplEnergy_Data = Temp SimplEnergy_Data

scoreboard players operation Temp SimplEnergy_Data = @s SimplEnergy_Data2
scoreboard players operation Temp SimplEnergy_Data *= Count SimplEnergy_Data
scoreboard players operation Temp SimplEnergy_Data /= 64 SimplEnergy_Data
scoreboard players operation Count SimplEnergy_Data /= Temp SimplEnergy_Data

scoreboard players operation @s SimplEnergy_CraftCount = Count SimplEnergy_Data
scoreboard players operation @s SimplEnergy_Data2 *= Count SimplEnergy_Data
execute store result block ~ ~ ~ Items[{Slot:16b}].Count byte 1 run scoreboard players get @s SimplEnergy_Data2
