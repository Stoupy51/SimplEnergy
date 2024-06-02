
#> simplenergy:custom_blocks/second
#
# @within	simplenergy:second
#

execute if entity @s[tag=simplenergy.solar_panel] run function simplenergy:custom_blocks/solar_panel/second
execute if entity @s[tag=simplenergy.furnace_generator] run function simplenergy:custom_blocks/furnace_generator/second

