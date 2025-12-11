
#> simplenergy:v2.0.15/load/check_dependencies
#
# @within	simplenergy:v2.0.15/load/secondary
#

## Check if SimplEnergy is loadable (dependencies)
scoreboard players set #dependency_error simplenergy.data 0
execute if score #dependency_error simplenergy.data matches 0 unless score #common_signals.major load.status matches 0.. run scoreboard players set #dependency_error simplenergy.data 1
execute if score #dependency_error simplenergy.data matches 0 if score #common_signals.major load.status matches 0 unless score #common_signals.minor load.status matches 2.. run scoreboard players set #dependency_error simplenergy.data 1
execute if score #dependency_error simplenergy.data matches 0 unless score #smithed.custom_block.major load.status matches 0.. run scoreboard players set #dependency_error simplenergy.data 1
execute if score #dependency_error simplenergy.data matches 0 if score #smithed.custom_block.major load.status matches 0 unless score #smithed.custom_block.minor load.status matches 7.. run scoreboard players set #dependency_error simplenergy.data 1
execute if score #dependency_error simplenergy.data matches 0 if score #smithed.custom_block.major load.status matches 0 if score #smithed.custom_block.minor load.status matches 7 unless score #smithed.custom_block.patch load.status matches 1.. run scoreboard players set #dependency_error simplenergy.data 1
execute if score #dependency_error simplenergy.data matches 0 unless score #smithed.crafter.major load.status matches 0.. run scoreboard players set #dependency_error simplenergy.data 1
execute if score #dependency_error simplenergy.data matches 0 if score #smithed.crafter.major load.status matches 0 unless score #smithed.crafter.minor load.status matches 7.. run scoreboard players set #dependency_error simplenergy.data 1
execute if score #dependency_error simplenergy.data matches 0 if score #smithed.crafter.major load.status matches 0 if score #smithed.crafter.minor load.status matches 7 unless score #smithed.crafter.patch load.status matches 1.. run scoreboard players set #dependency_error simplenergy.data 1
execute if score #dependency_error simplenergy.data matches 0 unless score #furnace_nbt_recipes.major load.status matches 1.. run scoreboard players set #dependency_error simplenergy.data 1
execute if score #dependency_error simplenergy.data matches 0 if score #furnace_nbt_recipes.major load.status matches 1 unless score #furnace_nbt_recipes.minor load.status matches 10.. run scoreboard players set #dependency_error simplenergy.data 1
execute if score #dependency_error simplenergy.data matches 0 if score #furnace_nbt_recipes.major load.status matches 1 if score #furnace_nbt_recipes.minor load.status matches 10 unless score #furnace_nbt_recipes.patch load.status matches 1.. run scoreboard players set #dependency_error simplenergy.data 1
execute if score #dependency_error simplenergy.data matches 0 unless score #smart_ore_generation.major load.status matches 1.. run scoreboard players set #dependency_error simplenergy.data 1
execute if score #dependency_error simplenergy.data matches 0 if score #smart_ore_generation.major load.status matches 1 unless score #smart_ore_generation.minor load.status matches 7.. run scoreboard players set #dependency_error simplenergy.data 1
execute if score #dependency_error simplenergy.data matches 0 if score #smart_ore_generation.major load.status matches 1 if score #smart_ore_generation.minor load.status matches 7 unless score #smart_ore_generation.patch load.status matches 2.. run scoreboard players set #dependency_error simplenergy.data 1
execute if score #dependency_error simplenergy.data matches 0 unless score #itemio.major load.status matches 1.. run scoreboard players set #dependency_error simplenergy.data 1
execute if score #dependency_error simplenergy.data matches 0 if score #itemio.major load.status matches 1 unless score #itemio.minor load.status matches 4.. run scoreboard players set #dependency_error simplenergy.data 1
execute if score #dependency_error simplenergy.data matches 0 if score #itemio.major load.status matches 1 if score #itemio.minor load.status matches 4 unless score #itemio.patch load.status matches 1.. run scoreboard players set #dependency_error simplenergy.data 1
execute if score #dependency_error simplenergy.data matches 0 unless score #energy.major load.status matches 1.. run scoreboard players set #dependency_error simplenergy.data 1
execute if score #dependency_error simplenergy.data matches 0 if score #energy.major load.status matches 1 unless score #energy.minor load.status matches 8.. run scoreboard players set #dependency_error simplenergy.data 1

