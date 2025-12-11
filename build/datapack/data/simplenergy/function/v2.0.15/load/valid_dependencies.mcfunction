
#> simplenergy:v2.0.15/load/valid_dependencies
#
# @within	simplenergy:v2.0.15/load/secondary
#			simplenergy:v2.0.15/load/valid_dependencies 1t replace [ scheduled ]
#

# Waiting for a player to get the game version, but stop function if no player found
execute unless entity @p run schedule function simplenergy:v2.0.15/load/valid_dependencies 1t replace
execute unless entity @p run return 0
execute store result score #game_version simplenergy.data run data get entity @p DataVersion

# Check if the game version is supported
scoreboard players set #mcload_error simplenergy.data 0
execute unless score #game_version simplenergy.data matches 4669.. run scoreboard players set #mcload_error simplenergy.data 1

# Decode errors
execute if score #mcload_error simplenergy.data matches 1 run tellraw @a {"translate": "simplenergy_error_this_version_is_made_for_minecraft_1_21_11","color":"red"}
execute if score #dependency_error simplenergy.data matches 1 run tellraw @a {"translate": "simplenergy_error_libraries_are_missingplease_download_the_right","color":"red"}
execute if score #dependency_error simplenergy.data matches 1 unless score #common_signals.major load.status matches 0.. run tellraw @a {"translate": "simplenergy.common_signals_v0_2_0","color":"gold","click_event":{"action":"open_url","url":"https://github.com/Stoupy51/CommonSignals"}}
execute if score #dependency_error simplenergy.data matches 1 if score #common_signals.major load.status matches 0 unless score #common_signals.minor load.status matches 2.. run tellraw @a {"translate": "simplenergy.common_signals_v0_2_0","color":"gold","click_event":{"action":"open_url","url":"https://github.com/Stoupy51/CommonSignals"}}
execute if score #dependency_error simplenergy.data matches 1 unless score #smithed.custom_block.major load.status matches 0.. run tellraw @a {"translate": "simplenergy.smithed_custom_block_v0_7_1","color":"gold","click_event":{"action":"open_url","url":"https://wiki.smithed.dev/libraries/custom-block/"}}
execute if score #dependency_error simplenergy.data matches 1 if score #smithed.custom_block.major load.status matches 0 unless score #smithed.custom_block.minor load.status matches 7.. run tellraw @a {"translate": "simplenergy.smithed_custom_block_v0_7_1","color":"gold","click_event":{"action":"open_url","url":"https://wiki.smithed.dev/libraries/custom-block/"}}
execute if score #dependency_error simplenergy.data matches 1 if score #smithed.custom_block.major load.status matches 0 if score #smithed.custom_block.minor load.status matches 7 unless score #smithed.custom_block.patch load.status matches 1.. run tellraw @a {"translate": "simplenergy.smithed_custom_block_v0_7_1","color":"gold","click_event":{"action":"open_url","url":"https://wiki.smithed.dev/libraries/custom-block/"}}
execute if score #dependency_error simplenergy.data matches 1 unless score #smithed.crafter.major load.status matches 0.. run tellraw @a {"translate": "simplenergy.smithed_crafter_v0_7_1","color":"gold","click_event":{"action":"open_url","url":"https://wiki.smithed.dev/libraries/crafter/"}}
execute if score #dependency_error simplenergy.data matches 1 if score #smithed.crafter.major load.status matches 0 unless score #smithed.crafter.minor load.status matches 7.. run tellraw @a {"translate": "simplenergy.smithed_crafter_v0_7_1","color":"gold","click_event":{"action":"open_url","url":"https://wiki.smithed.dev/libraries/crafter/"}}
execute if score #dependency_error simplenergy.data matches 1 if score #smithed.crafter.major load.status matches 0 if score #smithed.crafter.minor load.status matches 7 unless score #smithed.crafter.patch load.status matches 1.. run tellraw @a {"translate": "simplenergy.smithed_crafter_v0_7_1","color":"gold","click_event":{"action":"open_url","url":"https://wiki.smithed.dev/libraries/crafter/"}}
execute if score #dependency_error simplenergy.data matches 1 unless score #furnace_nbt_recipes.major load.status matches 1.. run tellraw @a {"translate": "simplenergy.furnace_nbt_recipes_v1_10_1","color":"gold","click_event":{"action":"open_url","url":"https://github.com/Stoupy51/FurnaceNbtRecipes"}}
execute if score #dependency_error simplenergy.data matches 1 if score #furnace_nbt_recipes.major load.status matches 1 unless score #furnace_nbt_recipes.minor load.status matches 10.. run tellraw @a {"translate": "simplenergy.furnace_nbt_recipes_v1_10_1","color":"gold","click_event":{"action":"open_url","url":"https://github.com/Stoupy51/FurnaceNbtRecipes"}}
execute if score #dependency_error simplenergy.data matches 1 if score #furnace_nbt_recipes.major load.status matches 1 if score #furnace_nbt_recipes.minor load.status matches 10 unless score #furnace_nbt_recipes.patch load.status matches 1.. run tellraw @a {"translate": "simplenergy.furnace_nbt_recipes_v1_10_1","color":"gold","click_event":{"action":"open_url","url":"https://github.com/Stoupy51/FurnaceNbtRecipes"}}
execute if score #dependency_error simplenergy.data matches 1 unless score #smart_ore_generation.major load.status matches 1.. run tellraw @a {"translate": "simplenergy.smartoregeneration_v1_7_2","color":"gold","click_event":{"action":"open_url","url":"https://github.com/Stoupy51/SmartOreGeneration"}}
execute if score #dependency_error simplenergy.data matches 1 if score #smart_ore_generation.major load.status matches 1 unless score #smart_ore_generation.minor load.status matches 7.. run tellraw @a {"translate": "simplenergy.smartoregeneration_v1_7_2","color":"gold","click_event":{"action":"open_url","url":"https://github.com/Stoupy51/SmartOreGeneration"}}
execute if score #dependency_error simplenergy.data matches 1 if score #smart_ore_generation.major load.status matches 1 if score #smart_ore_generation.minor load.status matches 7 unless score #smart_ore_generation.patch load.status matches 2.. run tellraw @a {"translate": "simplenergy.smartoregeneration_v1_7_2","color":"gold","click_event":{"action":"open_url","url":"https://github.com/Stoupy51/SmartOreGeneration"}}
execute if score #dependency_error simplenergy.data matches 1 unless score #itemio.major load.status matches 1.. run tellraw @a {"translate": "simplenergy.itemio_v1_4_1","color":"gold","click_event":{"action":"open_url","url":"https://github.com/edayot/ItemIO"}}
execute if score #dependency_error simplenergy.data matches 1 if score #itemio.major load.status matches 1 unless score #itemio.minor load.status matches 4.. run tellraw @a {"translate": "simplenergy.itemio_v1_4_1","color":"gold","click_event":{"action":"open_url","url":"https://github.com/edayot/ItemIO"}}
execute if score #dependency_error simplenergy.data matches 1 if score #itemio.major load.status matches 1 if score #itemio.minor load.status matches 4 unless score #itemio.patch load.status matches 1.. run tellraw @a {"translate": "simplenergy.itemio_v1_4_1","color":"gold","click_event":{"action":"open_url","url":"https://github.com/edayot/ItemIO"}}
execute if score #dependency_error simplenergy.data matches 1 unless score #energy.major load.status matches 1.. run tellraw @a {"translate": "simplenergy.datapackenergy_v1_8_0","color":"gold","click_event":{"action":"open_url","url":"https://github.com/ICY105/DatapackEnergy"}}
execute if score #dependency_error simplenergy.data matches 1 if score #energy.major load.status matches 1 unless score #energy.minor load.status matches 8.. run tellraw @a {"translate": "simplenergy.datapackenergy_v1_8_0","color":"gold","click_event":{"action":"open_url","url":"https://github.com/ICY105/DatapackEnergy"}}

# Load SimplEnergy
execute if score #game_version simplenergy.data matches 1.. if score #mcload_error simplenergy.data matches 0 if score #dependency_error simplenergy.data matches 0 run function simplenergy:v2.0.15/load/confirm_load

