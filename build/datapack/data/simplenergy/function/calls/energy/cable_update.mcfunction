
#> simplenergy:calls/energy/cable_update
#
# @within	#energy:v1/cable_update
#

# Stop if not simplenergy cable
execute unless entity @s[tag=simplenergy.custom_block,tag=energy.cable] run return fail

# Apply the model dynamically based on cable tags
execute if entity @s[tag=simplenergy.simple_cable] run item replace entity @s contents with minecraft:command_block[item_model="simplenergy:simple_cable"]
execute if entity @s[tag=simplenergy.advanced_cable] run item replace entity @s contents with minecraft:command_block[item_model="simplenergy:advanced_cable"]
execute if entity @s[tag=simplenergy.elite_cable] run item replace entity @s contents with minecraft:command_block[item_model="simplenergy:elite_cable"]

# Get the right model
item modify entity @s contents {"function": "minecraft:set_custom_model_data","floats": {"values": [{"type": "minecraft:score","target": "this","score": "energy.data"}],"mode": "replace_all"}}

