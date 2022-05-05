
##Called by function tag #furnace_nbt_recipes:v1.0/recipes_used
##Default recipe used is recipes/xp/1.0
##score #type furnace_nbt_recipes.data has 3 values:
##value 0: smelting
##value 1: blasting
##value 2: smoking

#Simplunium Ore
	execute if score #found furnace_nbt_recipes.data matches 0 store result score #found furnace_nbt_recipes.data if score #type furnace_nbt_recipes.data matches 0 if data storage furnace_nbt_recipes:main input.tag.ctc{id:"simplunium_ore"} run function furnace_nbt_recipes:v1.0/calls/xp/2.0
	execute if score #found furnace_nbt_recipes.data matches 0 store result score #found furnace_nbt_recipes.data if score #type furnace_nbt_recipes.data matches 1 if data storage furnace_nbt_recipes:main input.tag.ctc{id:"simplunium_ore"} run function furnace_nbt_recipes:v1.0/calls/xp/2.5

#Simplunium Armor & Tools
	execute if score #found furnace_nbt_recipes.data matches 0 store result score #found furnace_nbt_recipes.data if data storage furnace_nbt_recipes:main input.tag.ctc{traits:{"metal/simplunium":1b,"armor":1b}} run function furnace_nbt_recipes:v1.0/calls/xp/2.0
	execute if score #found furnace_nbt_recipes.data matches 0 store result score #found furnace_nbt_recipes.data if data storage furnace_nbt_recipes:main input.tag.ctc{traits:{"metal/simplunium":1b,"tool":1b}} run function furnace_nbt_recipes:v1.0/calls/xp/2.0


