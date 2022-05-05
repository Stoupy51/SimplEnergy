
advancement revoke @s only furnace_nbt_recipes:v1.0/placed_furnace
advancement revoke @s only furnace_nbt_recipes:v1.0/placed_blast_furnace
advancement revoke @s only furnace_nbt_recipes:v1.0/placed_smoker
execute if score FurnaceNbtRecipes load.status matches 10 run function furnace_nbt_recipes:v1.0/advancements/check_for_furnaces/look_all
