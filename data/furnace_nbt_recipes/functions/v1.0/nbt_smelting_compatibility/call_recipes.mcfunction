
#define storage nbt_smelting:io
data modify storage nbt_smelting:io item set from storage furnace_nbt_recipes:main input
data remove block ~ ~ ~ Items[{Slot:2b}]

execute if score #type furnace_nbt_recipes.data matches 0 run function #nbt_smelting:v1/furnace
execute if score #type furnace_nbt_recipes.data matches 1 run function #nbt_smelting:v1/blast_furnace
execute if score #type furnace_nbt_recipes.data matches 2 run function #nbt_smelting:v1/smoker

item replace block ~ ~ ~ container.3 from block ~ ~ ~ container.2
execute if data block ~ ~ ~ Items[{Slot:2b}] run scoreboard players set #found furnace_nbt_recipes.data 1
data remove storage nbt_smelting:io item
