
## Called by function tag #furnace_nbt_recipes:v1/disable_cooking
## In this function, you should only disable recipes that you added yourself.
## For instance, barrel and command_block recipes are added by default
## in the furnace_nbt_recipes/recipes/ folder.

# Disable cooking recipes for items that are not allowed to be cooked
execute if score #reset furnace_nbt_recipes.data matches 0 store success score #reset furnace_nbt_recipes.data if data storage furnace_nbt_recipes:main input{id:"minecraft:barrel"}
execute if score #reset furnace_nbt_recipes.data matches 0 store success score #reset furnace_nbt_recipes.data if data storage furnace_nbt_recipes:main input{id:"minecraft:command_block"}
execute if score #reset furnace_nbt_recipes.data matches 0 store success score #reset furnace_nbt_recipes.data if data storage furnace_nbt_recipes:main input{id:"minecraft:structure_block"}
execute if score #reset furnace_nbt_recipes.data matches 0 store success score #reset furnace_nbt_recipes.data if data storage furnace_nbt_recipes:main input{id:"minecraft:leather_helmet"}
execute if score #reset furnace_nbt_recipes.data matches 0 store success score #reset furnace_nbt_recipes.data if data storage furnace_nbt_recipes:main input{id:"minecraft:leather_chestplate"}
execute if score #reset furnace_nbt_recipes.data matches 0 store success score #reset furnace_nbt_recipes.data if data storage furnace_nbt_recipes:main input{id:"minecraft:leather_leggings"}
execute if score #reset furnace_nbt_recipes.data matches 0 store success score #reset furnace_nbt_recipes.data if data storage furnace_nbt_recipes:main input{id:"minecraft:leather_boots"}
execute if score #reset furnace_nbt_recipes.data matches 0 store success score #reset furnace_nbt_recipes.data if data storage furnace_nbt_recipes:main input{id:"minecraft:diamond_sword"}
execute if score #reset furnace_nbt_recipes.data matches 0 store success score #reset furnace_nbt_recipes.data if data storage furnace_nbt_recipes:main input{id:"minecraft:diamond_pickaxe"}
execute if score #reset furnace_nbt_recipes.data matches 0 store success score #reset furnace_nbt_recipes.data if data storage furnace_nbt_recipes:main input{id:"minecraft:diamond_axe"}
execute if score #reset furnace_nbt_recipes.data matches 0 store success score #reset furnace_nbt_recipes.data if data storage furnace_nbt_recipes:main input{id:"minecraft:diamond_hoe"}
execute if score #reset furnace_nbt_recipes.data matches 0 store success score #reset furnace_nbt_recipes.data if data storage furnace_nbt_recipes:main input{id:"minecraft:diamond_shovel"}

