
#Define what type of furnace is being used
	scoreboard players set #type furnace_nbt_recipes.data 0
	execute store result score #type furnace_nbt_recipes.data if block ~ ~ ~ blast_furnace
	execute if score #type furnace_nbt_recipes.data matches 0 if block ~ ~ ~ blast_furnace run scoreboard players set #type furnace_nbt_recipes.data 1
	execute if score #type furnace_nbt_recipes.data matches 0 if block ~ ~ ~ smoker run scoreboard players set #type furnace_nbt_recipes.data 2

#Storage manipulation
	execute store result score #cook_time furnace_nbt_recipes.data run data get storage furnace_nbt_recipes:main furnace.CookTime
	execute store result score #output_cmd furnace_nbt_recipes.data run data get storage furnace_nbt_recipes:main furnace.Items[{Slot:2b}].tag.CustomModelData
	data modify storage furnace_nbt_recipes:main input set from storage furnace_nbt_recipes:main furnace.Items[{Slot:0b}]

	scoreboard players set #found furnace_nbt_recipes.data 0
	execute in minecraft:overworld run data modify block -30000000 14 1610 Items set from storage furnace_nbt_recipes:main furnace.Items
	execute in minecraft:overworld positioned -30000000 14 1610 run function furnace_nbt_recipes:v1.0/technical/call_recipes
	execute store result score #excepted_cmd furnace_nbt_recipes.data in minecraft:overworld run data get block -30000000 14 1610 Items[{Slot:3b}].tag.CustomModelData

#Disable cooking if not permitted
	scoreboard players set #reset furnace_nbt_recipes.data 0
	execute if score #found furnace_nbt_recipes.data matches 0 run function #furnace_nbt_recipes:v1/disable_cooking
	execute if score #reset furnace_nbt_recipes.data matches 0 store success score #reset furnace_nbt_recipes.data unless score #output_cmd furnace_nbt_recipes.data matches 0 unless score #output_cmd furnace_nbt_recipes.data = #excepted_cmd furnace_nbt_recipes.data

#Otherwise, continue
	execute if score #reset furnace_nbt_recipes.data matches 0 if score #found furnace_nbt_recipes.data matches 1 run function furnace_nbt_recipes:v1.0/technical/cook
	execute if score #reset furnace_nbt_recipes.data matches 1 run data modify block ~ ~ ~ CookTime set value 0s

