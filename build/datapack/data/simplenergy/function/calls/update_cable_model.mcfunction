
#> simplenergy:calls/update_cable_model
#
# @within	simplenergy:calls/update_cable
#

# Update the cable model
data modify entity @s item set value {"id":"minecraft:cobblestone",count:1}
execute if entity @s[tag=simplenergy.elite_cable] run scoreboard players set #model simplenergy.data 2012400
execute if entity @s[tag=simplenergy.advanced_cable] run scoreboard players set #model simplenergy.data 2012300
execute if entity @s[tag=simplenergy.simple_cable] run scoreboard players set #model simplenergy.data 2012200

# Add the model offset
scoreboard players operation #model simplenergy.data += @s energy.data

# Apply the model
execute store result entity @s item.components."minecraft:custom_model_data" int 1 run scoreboard players get #model simplenergy.data
scoreboard players reset #model simplenergy.data

