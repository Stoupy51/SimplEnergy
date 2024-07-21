
#> simplenergy:custom_blocks/_groups/minecraft_cauldron
#
# @within	simplenergy:custom_blocks/destroy
#

execute if score #total_cauldron_generator simplenergy.data matches 1.. if entity @s[tag=simplenergy.cauldron_generator] run function simplenergy:custom_blocks/cauldron_generator/destroy

