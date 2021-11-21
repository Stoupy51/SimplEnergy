scoreboard players set 1000 SE_Data 1000
scoreboard players set 10 SE_Data 10
scoreboard players operation Part1 SE_Data = @s EF_kJ
scoreboard players operation Part2 SE_Data = @s EF_kJ
scoreboard players operation Part1 SE_Data /= 1000 SE_Data
scoreboard players operation Part2 SE_Data %= 1000 SE_Data
scoreboard players operation Part2 SE_Data /= 10 SE_Data
execute store result storage simplenergy:energy Energy int 1 run scoreboard players get @s EF_kJ
execute store result storage simplenergy:energy Part1 int 1 run scoreboard players get Part1 SE_Data
execute store result storage simplenergy:energy Part2 int 1 run scoreboard players get Part2 SE_Data
data modify entity @e[type=item,limit=1,sort=nearest,distance=..1] Item.tag.EF_kJ set from storage simplenergy:energy Energy
setblock ~ ~ ~ oak_sign{Text1:'[{"text":"[Charge: ","italic":false,"color":"gray"},{"nbt":"Part1","storage":"simplenergy:energy"},{"text":"."},{"nbt":"Part2","storage":"simplenergy:energy"},{"text":" MJ]"}]'}
data modify entity @e[type=item,limit=1,sort=nearest,distance=..1] Item.tag.display.Lore append from block ~ ~ ~ Text1
setblock ~ ~ ~ air
