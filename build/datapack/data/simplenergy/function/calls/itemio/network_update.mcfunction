
#> simplenergy:calls/itemio/network_update
#
# @within	#itemio:event/network_update
#

# Stop if not simplenergy servo
execute unless entity @s[tag=simplenergy.custom_block,tag=simplenergy.servo] run return fail

# Apply the model depending on the on/off state and the network connection
function simplenergy:utils/servo/update_model

