
#> simplenergy:custom_blocks/_groups/minecraft_brewing_stand
#
# @within	simplenergy:custom_blocks/destroy
#

execute if score #total_electric_brewing_stand simplenergy.data matches 1.. if entity @s[tag=simplenergy.electric_brewing_stand] run function simplenergy:custom_blocks/electric_brewing_stand/destroy

