
#> simplenergy:utils/servo/update_model
#
# @within	simplenergy:calls/itemio/network_update
#			simplenergy:utils/servo/enable
#			simplenergy:utils/servo/disable
#

execute if score @s simplenergy.servo_off matches 1 if entity @s[tag=simplenergy.servo_extractor] run data modify entity @s Item.components."minecraft:item_model" set value "simplenergy:servo/extract_off"
execute if score @s simplenergy.servo_off matches 1 if entity @s[tag=simplenergy.servo_inserter] run data modify entity @s Item.components."minecraft:item_model" set value "simplenergy:servo/insert_off"
execute if score @s simplenergy.servo_off matches 0 if score @s itemio.math matches 0 if entity @s[tag=simplenergy.servo_extractor] run data modify entity @s Item.components."minecraft:item_model" set value "simplenergy:servo/extract_block"
execute if score @s simplenergy.servo_off matches 0 if score @s itemio.math matches 1 if entity @s[tag=simplenergy.servo_extractor] run data modify entity @s Item.components."minecraft:item_model" set value "simplenergy:servo/extract_connected"
execute if score @s simplenergy.servo_off matches 0 if score @s itemio.math matches 0 if entity @s[tag=simplenergy.servo_inserter] run data modify entity @s Item.components."minecraft:item_model" set value "simplenergy:servo/insert_block"
execute if score @s simplenergy.servo_off matches 0 if score @s itemio.math matches 1 if entity @s[tag=simplenergy.servo_inserter] run data modify entity @s Item.components."minecraft:item_model" set value "simplenergy:servo/insert_connected"

