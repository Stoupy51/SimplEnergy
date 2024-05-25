
#> simplenergy:custom_blocks/_groups/minecraft_furnace
#
# @within	simplenergy:custom_blocks/destroy
#

execute if entity @s[tag=simplenergy.furnace_generator] run function simplenergy:custom_blocks/furnace_generator/destroy
execute if entity @s[tag=simplenergy.electric_furnace] run function simplenergy:custom_blocks/electric_furnace/destroy
execute if entity @s[tag=simplenergy.electric_smelter] run function simplenergy:custom_blocks/electric_smelter/destroy

