
# Add the model offset
scoreboard players operation #model simplenergy.data += @s energy.data

# Apply the model
execute store result entity @s item.components."minecraft:custom_model_data" int 1 run scoreboard players get #model simplenergy.data
scoreboard players reset #model simplenergy.data

