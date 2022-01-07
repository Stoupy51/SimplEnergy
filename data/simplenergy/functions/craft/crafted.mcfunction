data modify storage simplenergy:items all.Count set from block ~ ~ ~ Items

execute store result score Count SimplEnergy_Data run data get storage simplenergy:items all.Count[{Slot:2b}].Count
scoreboard players remove Count SimplEnergy_Data 1
execute store result storage simplenergy:items all.Count[{Slot:2b}].Count byte 1 run scoreboard players get Count SimplEnergy_Data

execute store result score Count SimplEnergy_Data run data get storage simplenergy:items all.Count[{Slot:3b}].Count
scoreboard players remove Count SimplEnergy_Data 1
execute store result storage simplenergy:items all.Count[{Slot:3b}].Count byte 1 run scoreboard players get Count SimplEnergy_Data

execute store result score Count SimplEnergy_Data run data get storage simplenergy:items all.Count[{Slot:4b}].Count
scoreboard players remove Count SimplEnergy_Data 1
execute store result storage simplenergy:items all.Count[{Slot:4b}].Count byte 1 run scoreboard players get Count SimplEnergy_Data

execute store result score Count SimplEnergy_Data run data get storage simplenergy:items all.Count[{Slot:11b}].Count
scoreboard players remove Count SimplEnergy_Data 1
execute store result storage simplenergy:items all.Count[{Slot:11b}].Count byte 1 run scoreboard players get Count SimplEnergy_Data

execute store result score Count SimplEnergy_Data run data get storage simplenergy:items all.Count[{Slot:12b}].Count
scoreboard players remove Count SimplEnergy_Data 1
execute store result storage simplenergy:items all.Count[{Slot:12b}].Count byte 1 run scoreboard players get Count SimplEnergy_Data

execute store result score Count SimplEnergy_Data run data get storage simplenergy:items all.Count[{Slot:13b}].Count
scoreboard players remove Count SimplEnergy_Data 1
execute store result storage simplenergy:items all.Count[{Slot:13b}].Count byte 1 run scoreboard players get Count SimplEnergy_Data

execute store result score Count SimplEnergy_Data run data get storage simplenergy:items all.Count[{Slot:20b}].Count
scoreboard players remove Count SimplEnergy_Data 1
execute store result storage simplenergy:items all.Count[{Slot:20b}].Count byte 1 run scoreboard players get Count SimplEnergy_Data

execute store result score Count SimplEnergy_Data run data get storage simplenergy:items all.Count[{Slot:21b}].Count
scoreboard players remove Count SimplEnergy_Data 1
execute store result storage simplenergy:items all.Count[{Slot:21b}].Count byte 1 run scoreboard players get Count SimplEnergy_Data

execute store result score Count SimplEnergy_Data run data get storage simplenergy:items all.Count[{Slot:22b}].Count
scoreboard players remove Count SimplEnergy_Data 1
execute store result storage simplenergy:items all.Count[{Slot:22b}].Count byte 1 run scoreboard players get Count SimplEnergy_Data

data modify block ~ ~ ~ Items set from storage simplenergy:items all.Count

scoreboard players remove @s SimplEnergy_CraftCount 1
execute if score @s SimplEnergy_CraftCount matches 1.. run function simplenergy:craft/crafted


function simplenergy:craft/drop
tag @s remove SimplEnergy_WaitingCraft
