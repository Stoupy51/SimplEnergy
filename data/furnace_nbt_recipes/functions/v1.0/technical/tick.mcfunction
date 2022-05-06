
execute unless block ~ ~ ~ #furnace_nbt_recipes:furnaces run kill @s
data modify storage furnace_nbt_recipes:main furnace set from block ~ ~ ~
execute if data storage furnace_nbt_recipes:main furnace.Items[{Slot:0b}] run function furnace_nbt_recipes:v1.0/technical/main
