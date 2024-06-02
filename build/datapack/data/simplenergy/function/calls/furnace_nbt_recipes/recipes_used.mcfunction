
#> simplenergy:calls/furnace_nbt_recipes/recipes_used
#
# @within	#furnace_nbt_recipes:v1/recipes_used
#

## Called by function tag #furnace_nbt_recipes:v1/recipes_used
## Default recipe used is recipes/xp/1.0
## score #type furnace_nbt_recipes.data has 3 values:
## value 0: smelting
## value 1: blasting
## value 2: smoking

# Recipes To Simplunium Ingot
execute if score #found furnace_nbt_recipes.data matches 0 store result score #found furnace_nbt_recipes.data if data storage furnace_nbt_recipes:main input.components."minecraft:custom_data".ctc{id:"simplunium_ore"} run function simplenergy:calls/furnace_nbt_recipes/xp/2.5
execute if score #found furnace_nbt_recipes.data matches 0 store result score #found furnace_nbt_recipes.data if data storage furnace_nbt_recipes:main input.components."minecraft:custom_data".ctc{id:"deepslate_simplunium_ore"} run function simplenergy:calls/furnace_nbt_recipes/xp/2.5
execute if score #found furnace_nbt_recipes.data matches 0 store result score #found furnace_nbt_recipes.data if data storage furnace_nbt_recipes:main input.components."minecraft:custom_data".ctc{id:"raw_simplunium"} run function simplenergy:calls/furnace_nbt_recipes/xp/2.5
execute if score #found furnace_nbt_recipes.data matches 0 store result score #found furnace_nbt_recipes.data if data storage furnace_nbt_recipes:main input.components."minecraft:custom_data".ctc{id:"simplunium_dust"} run function simplenergy:calls/furnace_nbt_recipes/xp/2.5

# Melting Simplunium Armor & Tools
execute if score #found furnace_nbt_recipes.data matches 0 store result score #found furnace_nbt_recipes.data if data storage furnace_nbt_recipes:main input.components."minecraft:custom_data".ctc{traits:{"metal/simplunium":1b,"armor":1b}} run function simplenergy:calls/furnace_nbt_recipes/xp/2.0
execute if score #found furnace_nbt_recipes.data matches 0 store result score #found furnace_nbt_recipes.data if data storage furnace_nbt_recipes:main input.components."minecraft:custom_data".ctc{traits:{"metal/simplunium":1b,"tool":1b}} run function simplenergy:calls/furnace_nbt_recipes/xp/2.0

