scoreboard players set Count SE_Data 64
scoreboard players set Temp SE_Data 64

execute if data storage simplenergy:items all.Crafting[{Slot:2b}] store result score Temp SE_Data run data get storage simplenergy:items all.Crafting[{Slot:2b}].Count
execute if score Temp SE_Data < Count SE_Data run scoreboard players operation Count SE_Data = Temp SE_Data

execute if data storage simplenergy:items all.Crafting[{Slot:3b}] store result score Temp SE_Data run data get storage simplenergy:items all.Crafting[{Slot:3b}].Count
execute if score Temp SE_Data < Count SE_Data run scoreboard players operation Count SE_Data = Temp SE_Data

execute if data storage simplenergy:items all.Crafting[{Slot:4b}] store result score Temp SE_Data run data get storage simplenergy:items all.Crafting[{Slot:4b}].Count
execute if score Temp SE_Data < Count SE_Data run scoreboard players operation Count SE_Data = Temp SE_Data

execute if data storage simplenergy:items all.Crafting[{Slot:11b}] store result score Temp SE_Data run data get storage simplenergy:items all.Crafting[{Slot:11b}].Count
execute if score Temp SE_Data < Count SE_Data run scoreboard players operation Count SE_Data = Temp SE_Data

execute if data storage simplenergy:items all.Crafting[{Slot:12b}] store result score Temp SE_Data run data get storage simplenergy:items all.Crafting[{Slot:12b}].Count
execute if score Temp SE_Data < Count SE_Data run scoreboard players operation Count SE_Data = Temp SE_Data

execute if data storage simplenergy:items all.Crafting[{Slot:13b}] store result score Temp SE_Data run data get storage simplenergy:items all.Crafting[{Slot:13b}].Count
execute if score Temp SE_Data < Count SE_Data run scoreboard players operation Count SE_Data = Temp SE_Data

execute if data storage simplenergy:items all.Crafting[{Slot:20b}] store result score Temp SE_Data run data get storage simplenergy:items all.Crafting[{Slot:20b}].Count
execute if score Temp SE_Data < Count SE_Data run scoreboard players operation Count SE_Data = Temp SE_Data

execute if data storage simplenergy:items all.Crafting[{Slot:21b}] store result score Temp SE_Data run data get storage simplenergy:items all.Crafting[{Slot:21b}].Count
execute if score Temp SE_Data < Count SE_Data run scoreboard players operation Count SE_Data = Temp SE_Data

execute if data storage simplenergy:items all.Crafting[{Slot:22b}] store result score Temp SE_Data run data get storage simplenergy:items all.Crafting[{Slot:22b}].Count
execute if score Temp SE_Data < Count SE_Data run scoreboard players operation Count SE_Data = Temp SE_Data

scoreboard players operation Temp SE_Data = @s SE_Data2
scoreboard players operation Temp SE_Data *= Count SE_Data
scoreboard players operation Temp SE_Data /= 64 SE_Data
scoreboard players operation Count SE_Data /= Temp SE_Data

scoreboard players operation @s SE_CraftCount = Count SE_Data
scoreboard players operation @s SE_Data2 *= Count SE_Data
execute store result block ~ ~ ~ Items[{Slot:16b}].Count byte 1 run scoreboard players get @s SE_Data2
