execute store result score Count SE_Data run data get block ~ ~ ~ Items[{Slot:2b}].Count
scoreboard players remove Count SE_Data 1
execute store result block ~ ~ ~ Items[{Slot:2b}].Count byte 1 run scoreboard players get Count SE_Data

execute store result score Count SE_Data run data get block ~ ~ ~ Items[{Slot:3b}].Count
scoreboard players remove Count SE_Data 1
execute store result block ~ ~ ~ Items[{Slot:3b}].Count byte 1 run scoreboard players get Count SE_Data

execute store result score Count SE_Data run data get block ~ ~ ~ Items[{Slot:4b}].Count
scoreboard players remove Count SE_Data 1
execute store result block ~ ~ ~ Items[{Slot:4b}].Count byte 1 run scoreboard players get Count SE_Data

execute store result score Count SE_Data run data get block ~ ~ ~ Items[{Slot:11b}].Count
scoreboard players remove Count SE_Data 1
execute store result block ~ ~ ~ Items[{Slot:11b}].Count byte 1 run scoreboard players get Count SE_Data

execute store result score Count SE_Data run data get block ~ ~ ~ Items[{Slot:12b}].Count
scoreboard players remove Count SE_Data 1
execute store result block ~ ~ ~ Items[{Slot:12b}].Count byte 1 run scoreboard players get Count SE_Data

execute store result score Count SE_Data run data get block ~ ~ ~ Items[{Slot:13b}].Count
scoreboard players remove Count SE_Data 1
execute store result block ~ ~ ~ Items[{Slot:13b}].Count byte 1 run scoreboard players get Count SE_Data

execute store result score Count SE_Data run data get block ~ ~ ~ Items[{Slot:20b}].Count
scoreboard players remove Count SE_Data 1
execute store result block ~ ~ ~ Items[{Slot:20b}].Count byte 1 run scoreboard players get Count SE_Data

execute store result score Count SE_Data run data get block ~ ~ ~ Items[{Slot:21b}].Count
scoreboard players remove Count SE_Data 1
execute store result block ~ ~ ~ Items[{Slot:21b}].Count byte 1 run scoreboard players get Count SE_Data

execute store result score Count SE_Data run data get block ~ ~ ~ Items[{Slot:22b}].Count
scoreboard players remove Count SE_Data 1
execute store result block ~ ~ ~ Items[{Slot:22b}].Count byte 1 run scoreboard players get Count SE_Data

data remove storage simplenergy:items Drop
data modify storage simplenergy:items Drop set from block ~ ~ ~ Items[{Slot:16b}]
execute if data storage simplenergy:items Drop run function simplenergy:craft/dropped
