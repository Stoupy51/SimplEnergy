scoreboard players set 1000 SE_Data 1000
scoreboard players set 10 SE_Data 10
scoreboard players operation Part1 SE_Data = @s EF_kJ
scoreboard players operation Part2 SE_Data = @s EF_kJ
scoreboard players operation MaxP1 SE_Data = @s EF_kJmax
scoreboard players operation MaxP2 SE_Data = @s EF_kJmax
scoreboard players operation Part1 SE_Data /= 1000 SE_Data
scoreboard players operation Part2 SE_Data %= 1000 SE_Data
scoreboard players operation Part2 SE_Data /= 10 SE_Data
scoreboard players operation MaxP1 SE_Data /= 1000 SE_Data
scoreboard players operation MaxP2 SE_Data %= 1000 SE_Data
scoreboard players operation MaxP2 SE_Data /= 10 SE_Data
execute store result storage simplenergy:energy Part1 int 1 run scoreboard players get Part1 SE_Data
execute store result storage simplenergy:energy Part2 int 1 run scoreboard players get Part2 SE_Data
execute store result storage simplenergy:energy MaxP1 int 1 run scoreboard players get MaxP1 SE_Data
execute store result storage simplenergy:energy MaxP2 int 1 run scoreboard players get MaxP2 SE_Data
setblock 0 0 0 oak_sign{Text1:'[{"text":"[Charge : ","italic":false,"color":"gray"},{"nbt":"Part1","storage":"simplenergy:energy"},{"text":"."},{"nbt":"Part2","storage":"simplenergy:energy"},{"text":"/"},{"nbt":"MaxP1","storage":"simplenergy:energy"},{"text":"."},{"nbt":"MaxP2","storage":"simplenergy:energy"},{"text":" mJ]"}]'}
data modify block ~ ~ ~ CustomName set from block 0 0 0 Text1
setblock 0 0 0 bedrock
