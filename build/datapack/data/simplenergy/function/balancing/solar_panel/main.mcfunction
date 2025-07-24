
#> simplenergy:balancing/solar_panel/main
#
# @executed	as @e[tag=simplenergy.can_balance,scores={energy.storage=20..}] & at @s[tag=!simplenergy.balanced]
#
# @within	simplenergy:balancing/main
#

# Collect energy from nearby blocks recursively
scoreboard players set #count simplenergy.data 0
scoreboard players set #total_energy simplenergy.data 0
function simplenergy:balancing/solar_panel/found

# If there are no adjacent device or the sum is higher than integer limit, stop here
execute if score #count simplenergy.data matches 1 run return 0
execute if score #total_energy simplenergy.data matches ..0 run return 0

# Redistributes energy to all adjacent devices
scoreboard players operation #per_device simplenergy.data = #total_energy simplenergy.data
scoreboard players operation #per_device simplenergy.data /= #count simplenergy.data
scoreboard players operation @e[tag=simplenergy.adjacent] energy.storage = #per_device simplenergy.data

# Add the remaining energy to the current device
scoreboard players operation #remaining simplenergy.data = #total_energy simplenergy.data
scoreboard players operation #remaining simplenergy.data %= #count simplenergy.data
scoreboard players operation @s energy.storage += #remaining simplenergy.data

# Sometimes the remaining energy is too high, so we set it to the max storage resulting in a loss of energy (lets assume it's a feature: energy transformed in heat)
execute if score @s energy.storage > @s energy.max_storage run scoreboard players operation @s energy.storage = @s energy.max_storage

