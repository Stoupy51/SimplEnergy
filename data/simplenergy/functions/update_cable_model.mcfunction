scoreboard players operation Temp simplenergy.data = @s energy.data
execute store result score Model simplenergy.data run data get entity @s Item.tag.CustomModelData
scoreboard players operation Model simplenergy.data /= 100 simplenergy.data
scoreboard players operation Model simplenergy.data *= 100 simplenergy.data
scoreboard players operation Model simplenergy.data += Temp simplenergy.data

execute store result entity @s Item.tag.CustomModelData int 1 run scoreboard players get Model simplenergy.data
scoreboard players reset Temp simplenergy.data
scoreboard players reset Model simplenergy.data
