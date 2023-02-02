
## Check if SimplEnergy is loadable (dependencies)
scoreboard players set #load_error simplenergy.data 0
execute if score #load_error simplenergy.data matches 0 unless score #smithed.custom_block.major load.status matches 0.. run scoreboard players set #load_error simplenergy.data 2
execute if score #load_error simplenergy.data matches 0 unless score #smithed.crafter.major load.status matches 0.. run scoreboard players set #load_error simplenergy.data 2
execute if score #load_error simplenergy.data matches 0 unless score #energy.major load.status matches 0.. run scoreboard players set #load_error simplenergy.data 2
execute if score #load_error simplenergy.data matches 0 unless score SmartOreGeneration load.status matches 10.. run scoreboard players set #load_error simplenergy.data 2
execute if score #load_error simplenergy.data matches 0 unless score DurabilityMultiplier load.status matches 10.. run scoreboard players set #load_error simplenergy.data 2
execute if score #load_error simplenergy.data matches 0 unless score FurnaceNbtRecipes load.status matches 10.. run scoreboard players set #load_error simplenergy.data 2

