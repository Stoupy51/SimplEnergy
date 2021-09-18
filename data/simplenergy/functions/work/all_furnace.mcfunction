#Choose Type Of Furnace
    data modify storage simplenergy:items Furnace set from block ~ ~ ~
    execute store result score CookTime SE_Data2 run data get storage simplenergy:items Furnace.CookTime
    execute if data storage simplenergy:items Furnace.RecipesUsed."simplenergy:barrel" if score CookTime SE_Data2 matches ..1 if score @s SE_Data2 matches 2012899 run data modify storage simplenergy:items Furnace.Items[{Slot:2b}].tag set from storage simplenergy:items 2012898.tag
execute store result score @s SE_Data2 run data get storage simplenergy:items Furnace.Items[{Slot:0b}].tag.CustomModelData
execute if score @s SE_Data2 matches 0 run data modify storage simplenergy:items Furnace.CookTime set value 0s
data modify block ~ ~ ~ CookTime set from storage simplenergy:items Furnace.CookTime
data modify block ~ ~ ~ Items set from storage simplenergy:items Furnace.Items
