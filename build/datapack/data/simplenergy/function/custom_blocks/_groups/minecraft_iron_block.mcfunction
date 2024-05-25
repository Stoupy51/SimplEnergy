
#> simplenergy:custom_blocks/_groups/minecraft_iron_block
#
# @within	simplenergy:custom_blocks/destroy
#

execute if entity @s[tag=simplenergy.simplunium_block] run function simplenergy:custom_blocks/simplunium_block/destroy
execute if entity @s[tag=simplenergy.elite_battery] run function simplenergy:custom_blocks/elite_battery/destroy
execute if entity @s[tag=simplenergy.creative_battery] run function simplenergy:custom_blocks/creative_battery/destroy

