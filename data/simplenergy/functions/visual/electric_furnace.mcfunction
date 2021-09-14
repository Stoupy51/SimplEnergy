execute if score @s EF_kJ matches 10.. run function simplenergy:work/electric_furnace
#Update gui depends on CookTime
    execute store result score CookTime SE_Data run data get block ~ ~ ~ CookTime
    execute if score @s EF_kJ matches ..0 run data modify block ~ ~ ~ Items[{Slot:1b}] set value {Slot:1b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:2011998,SE_CustomTextureItem:1s,display:{Name:'[{"text":""}]'}}}
    execute if score @s EF_kJ matches 1..200 run data modify block ~ ~ ~ Items[{Slot:1b}] set value {Slot:1b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:2011997,SE_CustomTextureItem:1s,display:{Name:'[{"text":""}]'}}}
    execute if score @s EF_kJ matches 201..400 run data modify block ~ ~ ~ Items[{Slot:1b}] set value {Slot:1b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:2011996,SE_CustomTextureItem:1s,display:{Name:'[{"text":""}]'}}}
    execute if score @s EF_kJ matches 401..600 run data modify block ~ ~ ~ Items[{Slot:1b}] set value {Slot:1b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:2011995,SE_CustomTextureItem:1s,display:{Name:'[{"text":""}]'}}}
    execute if score @s EF_kJ matches 601..799 run data modify block ~ ~ ~ Items[{Slot:1b}] set value {Slot:1b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:2011994,SE_CustomTextureItem:1s,display:{Name:'[{"text":""}]'}}}
    execute if score @s EF_kJ matches 800.. run data modify block ~ ~ ~ Items[{Slot:1b}] set value {Slot:1b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:2011993,SE_CustomTextureItem:1s,display:{Name:'[{"text":""}]'}}}

    execute if score CookTime SE_Data matches 0 run data modify entity @s Item.tag.CustomModelData set value 2012200
    execute unless score CookTime SE_Data matches 0 run data modify entity @s Item.tag.CustomModelData set value 2012201
