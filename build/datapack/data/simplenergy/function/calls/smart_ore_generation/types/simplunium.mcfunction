
#> simplenergy:calls/smart_ore_generation/types/simplunium
#
# @within	simplenergy:calls/smart_ore_generation/simplunium_ore
#

# Switch between normal and deepslate
scoreboard players set #success simplenergy.data 0
execute store success score #success simplenergy.data if block ~ ~ ~ #minecraft:deepslate_ore_replaceables run function simplenergy:place/deepslate_simplunium_ore/
execute if score #success simplenergy.data matches 0 run function simplenergy:place/simplunium_ore/

