
#> simplenergy:calls/cable_update
#
# @within	#energy:v1/cable_update
#

# Get the base model
execute if entity @s[tag=simplenergy.simple_cable] run scoreboard players set #model simplenergy.data 2012200
execute if entity @s[tag=simplenergy.advanced_cable] run scoreboard players set #model simplenergy.data 2012300
execute if entity @s[tag=simplenergy.elite_cable] run scoreboard players set #model simplenergy.data 2012400

# Add the model offset
scoreboard players operation #model simplenergy.data += @s energy.data

# Apply the model
item replace entity @s[tag=simplenergy.custom_block,tag=energy.cable] container.0 with cobblestone
execute store result entity @s[tag=simplenergy.custom_block,tag=energy.cable] item.components."minecraft:custom_model_data" int 1 run scoreboard players get #model simplenergy.data
scoreboard players reset #model simplenergy.data

