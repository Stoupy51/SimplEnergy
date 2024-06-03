
# Launch function if item has simplenergy cable tag
execute if entity @s[tag=simplenergy.custom_block,tag=energy.cable] run function simplenergy:calls/update_cable_model

