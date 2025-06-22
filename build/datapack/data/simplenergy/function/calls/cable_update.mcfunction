
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
data modify storage simplenergy:main model_data set value {"floats":[0.0f]}
execute store result storage simplenergy:main model_data.floats[0] float 1 run scoreboard players get @s energy.data
data modify entity @s item.components."minecraft:custom_model_data" set from storage simplenergy:main model_data
data remove storage simplenergy:main model_data

