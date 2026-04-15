
#> simplenergy:calls/itemio/cable_update
#
# @within	#itemio:event/cable_update
#

# Stop if not simplenergy cable
execute unless entity @s[tag=simplenergy.custom_block,tag=itemio.cable] run return fail

# Apply the model dynamically based on cable tags
execute if entity @s[tag=simplenergy.basic_item_cable] run item replace entity @s contents with minecraft:command_block[item_model="simplenergy:basic_item_cable"]

# Get the right model
item modify entity @s contents {"function": "minecraft:set_custom_model_data","floats": {"values": [{"type": "minecraft:score","target": "this","score": "itemio.math"}],"mode": "replace_all"}}

