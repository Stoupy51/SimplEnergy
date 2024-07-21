
#> simplenergy:custom_blocks/_groups/minecraft_furnace
#
# @within	simplenergy:custom_blocks/destroy
#

execute if score #total_furnace_generator simplenergy.data matches 1.. if entity @s[tag=simplenergy.furnace_generator] run function simplenergy:custom_blocks/furnace_generator/destroy
execute if score #total_electric_furnace simplenergy.data matches 1.. if entity @s[tag=simplenergy.electric_furnace] run function simplenergy:custom_blocks/electric_furnace/destroy
execute if score #total_electric_smelter simplenergy.data matches 1.. if entity @s[tag=simplenergy.electric_smelter] run function simplenergy:custom_blocks/electric_smelter/destroy

