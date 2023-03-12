
# Calculate the model
execute store result score #model simplenergy.data run data get entity @s item.tag.CustomModelData
scoreboard players operation #model simplenergy.data /= #100 simplenergy.data
scoreboard players operation #model simplenergy.data *= #100 simplenergy.data
scoreboard players operation #model simplenergy.data += @s energy.data

# Apply the model
execute store result entity @s item.tag.CustomModelData int 1 run scoreboard players get #model simplenergy.data
scoreboard players reset #model simplenergy.data

