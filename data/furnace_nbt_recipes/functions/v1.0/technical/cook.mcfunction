
#Choose Type Of Furnace and do recipes
	execute if score #type furnace_nbt_recipes.data matches 0 if score #cook_time furnace_nbt_recipes.data matches 190.. in overworld run function furnace_nbt_recipes:v1.0/technical/shulker_manipulation
	execute unless score #type furnace_nbt_recipes.data matches 0 if score #cook_time furnace_nbt_recipes.data matches 90.. in overworld run function furnace_nbt_recipes:v1.0/technical/shulker_manipulation

#Apply new storage values
	data modify block ~ ~ ~ Items set from storage furnace_nbt_recipes:main furnace.Items

#Apply XP support
	execute if score #reset furnace_nbt_recipes.data matches 1 run scoreboard players set #found furnace_nbt_recipes.data 0
	execute if score #reset furnace_nbt_recipes.data matches 1 run function #furnace_nbt_recipes:v1/recipes_used
	execute if score #reset furnace_nbt_recipes.data matches 1 if score #found furnace_nbt_recipes matches 0 run function furnace_nbt_recipes:v1.0/calls/xp/1.0
