
## Others
forceload add 0 0
execute unless score #force_loaded simplenergy.data matches 1 store success score #force_loaded simplenergy.data run summon marker 0 0 0 {Tags:["simplenergy.forceload","global.forceload"]}
execute unless entity @a run schedule function simplenergy:post_load 1t replace
execute if entity @p store result score #game_version load.status run data get entity @p DataVersion


## Check if SimplEnergy is loadable (dependencies)
scoreboard players set #error load.status 0
execute if score #error load.status matches 0 unless score #game_version load.status matches 3105.. run scoreboard players set #error load.status 1
execute if score #error load.status matches 0 unless score #smithed.custom_block.major load.status matches 0.. run scoreboard players set #error load.status 2
execute if score #error load.status matches 0 unless score #smithed.crafter.major load.status matches 0.. run scoreboard players set #error load.status 2
execute if score #error load.status matches 0 unless score #energy.major load.status matches 0.. run scoreboard players set #error load.status 2
execute if score #error load.status matches 0 unless score DurabilityMultiplier load.status matches 10.. run scoreboard players set #error load.status 2
execute if score #error load.status matches 0 unless score FurnaceNbtRecipes load.status matches 10.. run scoreboard players set #error load.status 2

# Decode error
execute if score #error load.status matches 1 run tellraw @a {"text":"SimplEnergy Error: This version is made for Minecraft 1.19+.","color":"red"}
execute if score #error load.status matches 2 run tellraw @a {"text":"SimplEnergy Error: Libraries are missing\nplease download the right SimplEnergy datapack\nor download each of these libraries one by one:","color":"red"}
execute if score #error load.status matches 2 unless score #smithed.custom_block.major load.status matches 0.. run tellraw @a {"text":"- [Smithed Custom Block Placement]","color":"gold","clickEvent":{"action":"open_url","value":"https://wiki.smithed.dev/libraries/custom-block/"}}
execute if score #error load.status matches 2 unless score #smithed.crafter.major load.status matches 0.. run tellraw @a {"text":"- [Smithed Crafter]","color":"gold","clickEvent":{"action":"open_url","value":"https://wiki.smithed.dev/libraries/crafter/"}}
execute if score #error load.status matches 2 unless score #energy.major load.status matches 0.. run tellraw @a {"text":"- [DatapackEnergy]","color":"gold","clickEvent":{"action":"open_url","value":"https://github.com/ICY105/DatapackEnergy"}}
execute if score #error load.status matches 2 unless score DurabilityMultiplier load.status matches 10.. run tellraw @a {"text":"- [Stoupy's Durability Multiplier]","color":"gold","clickEvent":{"action":"open_url","value":"https://github.com/Stoupy51/DurabilityMultiplier"}}
execute if score #error load.status matches 2 unless score FurnaceNbtRecipes load.status matches 10.. run tellraw @a {"text":"- [Stoupy's Furnace NBT Recipes]","color":"gold","clickEvent":{"action":"open_url","value":"https://github.com/Stoupy51/FurnaceNbtRecipes"}}

# Load SimplEnergy
scoreboard players set #SimplEnergyLoaded load.status 0
execute if score #error load.status matches 0 run scoreboard players set #SimplEnergyLoaded load.status 1
execute if score #error load.status matches 0 run tellraw @a[tag=convention.debug] {"text":"[Loaded SimplEnergy v1.9.9]","color":"green"}

