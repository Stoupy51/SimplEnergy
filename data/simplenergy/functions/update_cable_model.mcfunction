scoreboard players operation Temp SimplEnergy_Data = @s energy.data
execute store result score Model SimplEnergy_Data run data get entity @s Item.tag.CustomModelData
scoreboard players operation Model SimplEnergy_Data /= 100 SimplEnergy_Data
scoreboard players operation Model SimplEnergy_Data *= 100 SimplEnergy_Data
scoreboard players operation Model SimplEnergy_Data += Temp SimplEnergy_Data
#tellraw @a [{"text":"@s energy.data : "},{"score":{"name":"Temp","objective":"SimplEnergy_Data"}}]
#tellraw @a [{"text":"new model : "},{"score":{"name":"Model","objective":"SimplEnergy_Data"}}]

execute store result entity @s Item.tag.CustomModelData int 1 run scoreboard players get Model SimplEnergy_Data
scoreboard players reset Temp SimplEnergy_Data
scoreboard players reset Model SimplEnergy_Data
#tellraw @a {"score":{"name":"Model","objective":"SimplEnergy_Data"}}
