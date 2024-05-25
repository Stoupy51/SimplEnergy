
#> simplenergy:custom_blocks/_groups/minecraft_player_head
#
# @within	simplenergy:custom_blocks/destroy
#

execute if entity @s[tag=simplenergy.simple_cable] run function simplenergy:custom_blocks/simple_cable/destroy
execute if entity @s[tag=simplenergy.advanced_cable] run function simplenergy:custom_blocks/advanced_cable/destroy
execute if entity @s[tag=simplenergy.elite_cable] run function simplenergy:custom_blocks/elite_cable/destroy

