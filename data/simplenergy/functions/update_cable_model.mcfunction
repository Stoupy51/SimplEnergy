scoreboard players operation Temp SE_Data = @s energy.data
execute store result score Model SE_Data run data get entity @s Item.tag.CustomModelData
scoreboard players operation Model SE_Data /= 100 SE_Data
scoreboard players operation Model SE_Data *= 100 SE_Data
scoreboard players operation Temp SE_Data += Model SE_Data
scoreboard players reset Model SE_Data

execute store result entity @s Item.tag.CustomModelData int 1 run scoreboard players get Temp SE_Data
