#Update gui depends on Energy Stored
    data modify block ~ ~ ~ Items insert 1 value {Slot:1b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:2011998,SE_CustomTextureItem:1b,display:{Name:'[{"text":""}]'}}}
    execute if score @s EF_Joule matches ..0 run data modify block ~ ~ ~ Items[1] set value {Slot:1b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:2011998,SE_CustomTextureItem:1b,display:{Name:'[{"text":""}]'}}}
    execute if score @s EF_Joule matches 1..200 run data modify block ~ ~ ~ Items[1] set value {Slot:1b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:2011997,SE_CustomTextureItem:1b,display:{Name:'[{"text":""}]'}}}
    execute if score @s EF_Joule matches 201..400 run data modify block ~ ~ ~ Items[1] set value {Slot:1b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:2011996,SE_CustomTextureItem:1b,display:{Name:'[{"text":""}]'}}}
    execute if score @s EF_Joule matches 401..600 run data modify block ~ ~ ~ Items[1] set value {Slot:1b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:2011995,SE_CustomTextureItem:1b,display:{Name:'[{"text":""}]'}}}
    execute if score @s EF_Joule matches 601..799 run data modify block ~ ~ ~ Items[1] set value {Slot:1b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:2011994,SE_CustomTextureItem:1b,display:{Name:'[{"text":""}]'}}}
    execute if score @s EF_Joule matches 800.. run data modify block ~ ~ ~ Items[1] set value {Slot:1b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:2011993,SE_CustomTextureItem:1b,display:{Name:'[{"text":""}]'}}}
