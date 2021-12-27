scoreboard players operation Temp SE_Data = @s energy.data
execute store result score Model SE_Data run data get entity @s Item.tag.CustomModelData
scoreboard players operation Model SE_Data /= 100 SE_Data
scoreboard players operation Model SE_Data *= 100 SE_Data
tellraw @a [{"text":"@s energy.data : "},{"score":{"name":"Temp","objective":"SE_Data"}}]
scoreboard players operation Model SE_Data += Temp SE_Data
tellraw @a [{"text":"new model : "},{"score":{"name":"Model","objective":"SE_Data"}}]

execute store result entity @s Item.tag.CustomModelData int 1 run scoreboard players get Model SE_Data
scoreboard players reset Temp SE_Data
scoreboard players reset Model SE_Data
#tellraw @a {"score":{"name":"Model","objective":"SE_Data"}}
