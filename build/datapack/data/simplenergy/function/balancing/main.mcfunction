
#> simplenergy:balancing/main
#
# @executed	as @e[tag=simplenergy.can_balance,scores={energy.storage=20..}] & at @s[tag=!simplenergy.balanced]
#
# @within	simplenergy:v2.0.15/second_5 [ as @e[tag=simplenergy.can_balance,scores={energy.storage=20..}] & at @s[tag=!simplenergy.balanced] ]
#

# Stop if already balanced
execute if entity @s[tag=simplenergy.balanced] run return 0

# Copy max storage from device to scoreboard & add balance tags
scoreboard players operation #max_storage simplenergy.data = @s energy.max_storage

# For each balancing device, run the main function
execute if entity @s[tag=simplenergy.solar_panel] run function simplenergy:balancing/solar_panel/main
execute if entity @s[tag=simplenergy.cauldron_generator] run function simplenergy:balancing/cauldron_generator/main
execute if entity @s[tag=simplenergy.heat_generator] run function simplenergy:balancing/heat_generator/main
execute if entity @s[tag=simplenergy.simple_battery] run function simplenergy:balancing/simple_battery/main
execute if entity @s[tag=simplenergy.advanced_battery] run function simplenergy:balancing/advanced_battery/main
execute if entity @s[tag=simplenergy.elite_battery] run function simplenergy:balancing/elite_battery/main

# Remove adjacent tags
tag @e[tag=simplenergy.adjacent] remove simplenergy.adjacent

