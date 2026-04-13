
#> simplenergy:v2.0.17/load/confirm_load
#
# @within	simplenergy:v2.0.17/load/valid_dependencies
#

scoreboard objectives add simplenergy.right_click minecraft.used:minecraft.warped_fungus_on_a_stick
scoreboard objectives add simplenergy.elevator_time dummy
scoreboard objectives add simplenergy.private dummy
team add simplenergy.green
team add simplenergy.gold
team add simplenergy.aqua
team modify simplenergy.green color green
team modify simplenergy.gold color gold
team modify simplenergy.aqua color aqua

# Score for energy usage or generation
scoreboard objectives add simplenergy.energy_rate dummy

# Opening manual detection
scoreboard objectives add simplenergy.open_manual minecraft.used:minecraft.written_book

# Register the manual to the universal manual
execute unless data storage stewbeet:main universal_manual run data modify storage stewbeet:main universal_manual set value []
data remove storage stewbeet:main universal_manual[{"name":"SimplEnergy"}]
data modify storage stewbeet:main universal_manual append value {"name":"SimplEnergy","loot_table":"simplenergy:i/manual","hover":[{"text": ""}, [{"translate":"simplenergy_manual"}, "\n"], {"text": "ဠ\\n\\n\\n\\n\\n\\n", "font": "simplenergy:manual", "color": "white"}, [{"text": "", "font": "minecraft:default", "color": "black"}, {"translate": "simplenergy.the_following_manual_will_guide_you_through_recipes_and_energy_s", "color": "#505050"}]]}

# Confirm load
tellraw @a[tag=convention.debug] {"translate":"simplenergy.loaded_simplenergy_v2_0_17","color":"green"}
scoreboard players set #simplenergy.loaded load.status 1
function simplenergy:v2.0.17/load/set_items_storage

