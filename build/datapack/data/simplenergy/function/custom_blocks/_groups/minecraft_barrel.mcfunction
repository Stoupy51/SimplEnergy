
#> simplenergy:custom_blocks/_groups/minecraft_barrel
#
# @within	simplenergy:custom_blocks/destroy
#

execute if score #total_pulverizer simplenergy.data matches 1.. if entity @s[tag=simplenergy.pulverizer] run function simplenergy:custom_blocks/pulverizer/destroy

