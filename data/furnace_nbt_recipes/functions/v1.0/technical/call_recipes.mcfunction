
execute if score #type furnace_nbt_recipes.data matches 0 run function #furnace_nbt_recipes:v1/smelting_recipes
execute if score #type furnace_nbt_recipes.data matches 1 run function #furnace_nbt_recipes:v1/blasting_recipes
execute if score #type furnace_nbt_recipes.data matches 2 run function #furnace_nbt_recipes:v1/smoking_recipes

execute if score #found furnace_nbt_recipes.data matches 0 if score #nbt_smelting.major load.status matches 1.. run function furnace_nbt_recipes:v1.0/nbt_smelting_compatibility/call_recipes
