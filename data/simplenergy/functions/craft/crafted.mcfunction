data modify storage simplenergy:items Count set from block ~ ~ ~ Items

execute store result score Count SE_Data run data get storage simplenergy:items Count[{Slot:2b}].Count
scoreboard players remove Count SE_Data 1
execute store result storage simplenergy:items Count[{Slot:2b}].Count byte 1 run scoreboard players get Count SE_Data

execute store result score Count SE_Data run data get storage simplenergy:items Count[{Slot:3b}].Count
scoreboard players remove Count SE_Data 1
execute store result storage simplenergy:items Count[{Slot:3b}].Count byte 1 run scoreboard players get Count SE_Data

execute store result score Count SE_Data run data get storage simplenergy:items Count[{Slot:4b}].Count
scoreboard players remove Count SE_Data 1
execute store result storage simplenergy:items Count[{Slot:4b}].Count byte 1 run scoreboard players get Count SE_Data

execute store result score Count SE_Data run data get storage simplenergy:items Count[{Slot:11b}].Count
scoreboard players remove Count SE_Data 1
execute store result storage simplenergy:items Count[{Slot:11b}].Count byte 1 run scoreboard players get Count SE_Data

execute store result score Count SE_Data run data get storage simplenergy:items Count[{Slot:12b}].Count
scoreboard players remove Count SE_Data 1
execute store result storage simplenergy:items Count[{Slot:12b}].Count byte 1 run scoreboard players get Count SE_Data

execute store result score Count SE_Data run data get storage simplenergy:items Count[{Slot:13b}].Count
scoreboard players remove Count SE_Data 1
execute store result storage simplenergy:items Count[{Slot:13b}].Count byte 1 run scoreboard players get Count SE_Data

execute store result score Count SE_Data run data get storage simplenergy:items Count[{Slot:20b}].Count
scoreboard players remove Count SE_Data 1
execute store result storage simplenergy:items Count[{Slot:20b}].Count byte 1 run scoreboard players get Count SE_Data

execute store result score Count SE_Data run data get storage simplenergy:items Count[{Slot:21b}].Count
scoreboard players remove Count SE_Data 1
execute store result storage simplenergy:items Count[{Slot:21b}].Count byte 1 run scoreboard players get Count SE_Data

execute store result score Count SE_Data run data get storage simplenergy:items Count[{Slot:22b}].Count
scoreboard players remove Count SE_Data 1
execute store result storage simplenergy:items Count[{Slot:22b}].Count byte 1 run scoreboard players get Count SE_Data

data modify block ~ ~ ~ Items set from storage simplenergy:items Count

function simplenergy:craft/drop
tag @s remove SE_WaitingCraft
