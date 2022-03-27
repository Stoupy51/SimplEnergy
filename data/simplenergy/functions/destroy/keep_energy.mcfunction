scoreboard players set 1000 simplenergy.data 1000
scoreboard players set #10 simplenergy.data 10
scoreboard players operation #part_1 simplenergy.data = @s energy.storage
scoreboard players operation #part_2 simplenergy.data = @s energy.storage
scoreboard players operation #part_1 simplenergy.data /= 1000 simplenergy.data
scoreboard players operation #part_2 simplenergy.data %= 1000 simplenergy.data
scoreboard players operation #part_2 simplenergy.data /= #10 simplenergy.data
execute store result storage simplenergy:energy Energy int 1 run scoreboard players get @s energy.storage
execute store result storage simplenergy:energy Part1 int 1 run scoreboard players get #part_1 simplenergy.data
execute store result storage simplenergy:energy Part2 int 1 run scoreboard players get #part_2 simplenergy.data
data modify entity @e[type=item,limit=1,sort=nearest,distance=..1] Item.tag.energy.storage set from storage simplenergy:energy Energy
setblock ~ ~ ~ oak_sign{Text1:'[{"text":"[Charge: ","italic":false,"color":"gray"},{"nbt":"Part1","storage":"simplenergy:energy"},{"text":"."},{"nbt":"Part2","storage":"simplenergy:energy"},{"text":" MJ]"}]'}
data modify entity @e[type=item,limit=1,sort=nearest,distance=..1] Item.tag.display.Lore insert 1 from block ~ ~ ~ Text1
setblock ~ ~ ~ air
