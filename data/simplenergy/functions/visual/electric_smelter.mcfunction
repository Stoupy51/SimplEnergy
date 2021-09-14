#Update gui depends on CookTime
    execute store result score CookTime SE_Data run data get block ~ ~ ~ CookTime
    execute if score @s EF_kJ matches ..0 run data modify block ~ ~ ~ Items[{Slot:1b}] set value {Slot:1b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:2011942,SE_CustomTextureItem:1s,display:{Name:'[{"text":""}]'}}}
    execute if score @s EF_kJ matches 1..1600 run data modify block ~ ~ ~ Items[{Slot:1b}] set value {Slot:1b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:2011941,SE_CustomTextureItem:1s,display:{Name:'[{"text":""}]'}}}
    execute if score @s EF_kJ matches 1601..3200 run data modify block ~ ~ ~ Items[{Slot:1b}] set value {Slot:1b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:2011940,SE_CustomTextureItem:1s,display:{Name:'[{"text":""}]'}}}
    execute if score @s EF_kJ matches 3201..4800 run data modify block ~ ~ ~ Items[{Slot:1b}] set value {Slot:1b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:2011939,SE_CustomTextureItem:1s,display:{Name:'[{"text":""}]'}}}
    execute if score @s EF_kJ matches 4801..6399 run data modify block ~ ~ ~ Items[{Slot:1b}] set value {Slot:1b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:2011938,SE_CustomTextureItem:1s,display:{Name:'[{"text":""}]'}}}
    execute if score @s EF_kJ matches 6400.. run data modify block ~ ~ ~ Items[{Slot:1b}] set value {Slot:1b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:2011937,SE_CustomTextureItem:1s,display:{Name:'[{"text":""}]'}}}

    execute if score CookTime SE_Data matches 0 run data modify entity @s Item.tag.CustomModelData set value 2012202
    execute unless score CookTime SE_Data matches 0 run data modify entity @s Item.tag.CustomModelData set value 2012203
