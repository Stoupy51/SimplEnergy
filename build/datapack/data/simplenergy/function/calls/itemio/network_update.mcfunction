
#> simplenergy:calls/itemio/network_update
#
# @within	#itemio:event/network_update
#

# Stop if not simplenergy servo
execute unless entity @s[tag=simplenergy.custom_block,tag=simplenergy.servo] run return fail

# Apply the model dynamically based on servo tags and itemio.math score
execute if score @s itemio.math matches 0 if entity @s[tag=simplenergy.servo_extractor] run data modify entity @s Item.components."minecraft:item_model" set value "simplenergy:servo/extract_block"
execute if score @s itemio.math matches 1 if entity @s[tag=simplenergy.servo_extractor] run data modify entity @s Item.components."minecraft:item_model" set value "simplenergy:servo/extract_connected"
execute if score @s itemio.math matches 0 if entity @s[tag=simplenergy.servo_inserter] run data modify entity @s Item.components."minecraft:item_model" set value "simplenergy:servo/insert_block"
execute if score @s itemio.math matches 1 if entity @s[tag=simplenergy.servo_inserter] run data modify entity @s Item.components."minecraft:item_model" set value "simplenergy:servo/insert_connected"

