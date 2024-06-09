
#> simplenergy:calls/furnace_nbt_recipes/blasting_recipes
#
# @within	#furnace_nbt_recipes:v1/blasting_recipes
#

execute if score #found furnace_nbt_recipes.data matches 0 store result score #found furnace_nbt_recipes.data if data storage furnace_nbt_recipes:main input{"components": {"minecraft:custom_data": {"simplenergy": {"raw_simplunium": true}}}} run loot replace block ~ ~ ~ container.3 loot simplenergy:i/simplunium_ingot
execute if score #found furnace_nbt_recipes.data matches 0 store result score #found furnace_nbt_recipes.data if data storage furnace_nbt_recipes:main input{"components": {"minecraft:custom_data": {"simplenergy": {"simplunium_dust": true}}}} run loot replace block ~ ~ ~ container.3 loot simplenergy:i/simplunium_ingot
execute if score #found furnace_nbt_recipes.data matches 0 store result score #found furnace_nbt_recipes.data if data storage furnace_nbt_recipes:main input{"components": {"minecraft:custom_data": {"simplenergy": {"simplunium_ore": true}}}} run loot replace block ~ ~ ~ container.3 loot simplenergy:i/simplunium_ingot
execute if score #found furnace_nbt_recipes.data matches 0 store result score #found furnace_nbt_recipes.data if data storage furnace_nbt_recipes:main input{"components": {"minecraft:custom_data": {"simplenergy": {"deepslate_simplunium_ore": true}}}} run loot replace block ~ ~ ~ container.3 loot simplenergy:i/simplunium_ingot

