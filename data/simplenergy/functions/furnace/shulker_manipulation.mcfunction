

execute store result score valid simplenergy.data unless data storage simplenergy:items furnace.Items[{Slot:2b}]
execute if score valid simplenergy.data matches 1 run data modify block -29999999 0 2013 Items[{Slot:3b}].Slot set value 2b
execute if score valid simplenergy.data matches 1 run data modify storage simplenergy:items furnace.Items append from block -29999999 0 2013 Items[{Slot:2b}]

execute if score valid simplenergy.data matches 0 store result score count simplenergy.data run data get block -29999999 0 2013 Items[{Slot:3b}].Count
execute if score valid simplenergy.data matches 0 store result score count_2 simplenergy.data run data get storage simplenergy:items furnace.Items[{Slot:2b}].Count
execute if score valid simplenergy.data matches 0 run scoreboard players operation count simplenergy.data += count_2 simplenergy.data
execute if score valid simplenergy.data matches 0 store result storage simplenergy:items furnace.Items[{Slot:2b}].Count byte 1 run scoreboard players get count simplenergy.data

execute store result storage simplenergy:items furnace.Items[{Slot:0b}].Count byte -0.999 run data get storage simplenergy:items furnace.Items[{Slot:0b}].Count -1
data modify block ~ ~ ~ CookTime set value 0s
clone -29999999 0 2013 -29999999 0 2013 20 72 45

#for cook experience
execute store result score recipe simplenergy.data run data get storage simplenergy:items furnace.RecipesUsed."simplenergy:cb_cb"
scoreboard players add recipe simplenergy.data 1
execute store result block ~ ~ ~ RecipesUsed."simplenergy:cb_cb" int 1 run scoreboard players get recipe simplenergy.data
scoreboard players reset recipe simplenergy.data
