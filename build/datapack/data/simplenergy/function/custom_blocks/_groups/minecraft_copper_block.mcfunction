
#> simplenergy:custom_blocks/_groups/minecraft_copper_block
#
# @within	simplenergy:custom_blocks/destroy
#

execute if score #total_simple_battery simplenergy.data matches 1.. if entity @s[tag=simplenergy.simple_battery] run function simplenergy:custom_blocks/simple_battery/destroy

