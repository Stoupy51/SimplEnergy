
execute store result score #model simplenergy.data run data get entity @s Item.tag.CustomModelData
scoreboard players operation #model simplenergy.data /= #100 simplenergy.data
scoreboard players operation #model simplenergy.data *= #100 simplenergy.data
scoreboard players operation #model simplenergy.data += @s energy.data

execute store result entity @s Item.tag.CustomModelData int 1 run scoreboard players get #model simplenergy.data
scoreboard players reset #model simplenergy.data
