

execute store result score #success simplenergy.data unless data storage simplenergy:main furnace.Items[{Slot:2b}]
execute if score #success simplenergy.data matches 1 run data modify block -30000000 14 1610 Items[{Slot:3b}].Slot set value 2b
execute if score #success simplenergy.data matches 1 run data modify storage simplenergy:main furnace.Items append from block -30000000 14 1610 Items[{Slot:2b}]

execute if score #success simplenergy.data matches 0 store result score count simplenergy.data run data get block -30000000 14 1610 Items[{Slot:3b}].Count
execute if score #success simplenergy.data matches 0 store result score #count_2 simplenergy.data run data get storage simplenergy:main furnace.Items[{Slot:2b}].Count
execute if score #success simplenergy.data matches 0 run scoreboard players operation count simplenergy.data += #count_2 simplenergy.data
execute if score #success simplenergy.data matches 0 store result storage simplenergy:main furnace.Items[{Slot:2b}].Count byte 1 run scoreboard players get count simplenergy.data

execute store result storage simplenergy:main furnace.Items[{Slot:0b}].Count byte -0.999 run data get storage simplenergy:main furnace.Items[{Slot:0b}].Count -1
data modify block ~ ~ ~ CookTime set value 0s

#for cook experience
execute store result score #recipe simplenergy.data run data get storage simplenergy:main furnace.RecipesUsed."simplenergy:cb_cb"
scoreboard players add #recipe simplenergy.data 1
execute store result block ~ ~ ~ RecipesUsed."simplenergy:cb_cb" int 1 run scoreboard players get #recipe simplenergy.data
scoreboard players reset #recipe simplenergy.data
