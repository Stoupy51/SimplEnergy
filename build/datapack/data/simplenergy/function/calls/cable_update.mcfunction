
#> simplenergy:calls/cable_update
#
# @within	#energy:v1/cable_update
#

# Stop if not simplenergy cable
execute unless entity @s[tag=simplenergy.custom_block] run return 0

# Get the base model

# Apply the model
execute if entity @s[tag=simplenergy.simple_cable] run item replace entity @s container.0 with cobblestone[item_model="simplenergy:simple_cable"]
execute if entity @s[tag=simplenergy.advanced_cable] run item replace entity @s container.0 with cobblestone[item_model="simplenergy:advanced_cable"]
execute if entity @s[tag=simplenergy.elite_cable] run item replace entity @s container.0 with cobblestone[item_model="simplenergy:elite_cable"]

# Get the right model
execute store result entity @s item.components."minecraft:custom_model_data" int 1 run scoreboard players get @s energy.data

