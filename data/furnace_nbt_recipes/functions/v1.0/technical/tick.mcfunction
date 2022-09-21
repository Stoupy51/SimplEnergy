
scoreboard players set #destroy furnace_nbt_recipes.data 0
execute store result score #destroy furnace_nbt_recipes.data unless block ~ ~ ~ #furnace_nbt_recipes:furnaces run kill @s
execute if score #destroy furnace_nbt_recipes.data matches 0 unless data block ~ ~ ~ {CookTime:0s} run function furnace_nbt_recipes:v1.0/technical/
