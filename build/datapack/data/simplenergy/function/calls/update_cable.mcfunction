
#> simplenergy:calls/update_cable
#
# @within	#energy:v1/cable_update
#

# Launch function if item has simplenergy cable tag
execute if entity @s[tag=simplenergy.cable] run function simplenergy:calls/update_cable_model

