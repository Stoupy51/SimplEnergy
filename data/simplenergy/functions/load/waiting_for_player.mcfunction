
# Waiting for a player
execute unless entity @p run schedule function simplenergy:load/waiting_for_player 1t replace
execute if entity @p store result score #game_version simplenergy.data run data get entity @p DataVersion

# Check if the game version is supported
execute if entity @p unless score #game_version simplenergy.data matches 3571.. run scoreboard players set #load_error simplenergy.data 1

# Decode error
execute if score #load_error simplenergy.data matches 1 run tellraw @a {"text":"SimplEnergy Error: This version is made for Minecraft 1.20.2+.","color":"red"}
execute if score #load_error simplenergy.data matches 2 run tellraw @a {"text":"SimplEnergy Error: Libraries are missing\nplease download the right SimplEnergy datapack\nor download each of these libraries one by one:","color":"red"}
execute if score #load_error simplenergy.data matches 2 unless score #smithed.custom_block.major load.status matches 0.. run tellraw @a {"text":"- [Smithed Custom Block Placement]","color":"gold","clickEvent":{"action":"open_url","value":"https://wiki.smithed.dev/libraries/custom-block/"}}
execute if score #load_error simplenergy.data matches 2 unless score #smithed.crafter.major load.status matches 0.. run tellraw @a {"text":"- [Smithed Crafter]","color":"gold","clickEvent":{"action":"open_url","value":"https://wiki.smithed.dev/libraries/crafter/"}}
execute if score #load_error simplenergy.data matches 2 unless score #energy.minor load.status matches 6.. run tellraw @a {"text":"- [DatapackEnergy]","color":"gold","clickEvent":{"action":"open_url","value":"https://github.com/ICY105/DatapackEnergy"}}
execute if score #load_error simplenergy.data matches 2 unless score SmartOreGeneration load.status matches 11.. run tellraw @a {"text":"- [Stoupy's Smart Ore Generation]","color":"gold","clickEvent":{"action":"open_url","value":"https://github.com/Stoupy51/SmartOreGeneration"}}
execute if score #load_error simplenergy.data matches 2 unless score DurabilityMultiplier load.status matches 13.. run tellraw @a {"text":"- [Stoupy's Durability Multiplier]","color":"gold","clickEvent":{"action":"open_url","value":"https://github.com/Stoupy51/DurabilityMultiplier"}}
execute if score #load_error simplenergy.data matches 2 unless score FurnaceNbtRecipes load.status matches 11.. run tellraw @a {"text":"- [Stoupy's Furnace NBT Recipes]","color":"gold","clickEvent":{"action":"open_url","value":"https://github.com/Stoupy51/FurnaceNbtRecipes"}}

# Load SimplEnergy
execute if score #game_version simplenergy.data matches 1.. if score #load_error simplenergy.data matches 0 run function simplenergy:load/confirm_load

