#Update gui depends on Energy Stored
    data modify block ~ ~ ~ Items insert -1 value {Slot:4b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:2011936,SE_CustomTextureItem:1b,display:{Name:'[{"text":""}]'}}}
    execute if score @s EF_Joule matches ..0 run data modify block ~ ~ ~ Items[-1] set value {Slot:4b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:2011936,SE_CustomTextureItem:1b,display:{Name:'[{"text":""}]'}}}
    execute if score @s EF_Joule matches 1..300 run data modify block ~ ~ ~ Items[-1] set value {Slot:4b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:2011935,SE_CustomTextureItem:1b,display:{Name:'[{"text":""}]'}}}
    execute if score @s EF_Joule matches 301..600 run data modify block ~ ~ ~ Items[-1] set value {Slot:4b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:2011934,SE_CustomTextureItem:1b,display:{Name:'[{"text":""}]'}}}
    execute if score @s EF_Joule matches 601..900 run data modify block ~ ~ ~ Items[-1] set value {Slot:4b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:2011933,SE_CustomTextureItem:1b,display:{Name:'[{"text":""}]'}}}
    execute if score @s EF_Joule matches 901..1199 run data modify block ~ ~ ~ Items[-1] set value {Slot:4b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:2011932,SE_CustomTextureItem:1b,display:{Name:'[{"text":""}]'}}}
    execute if score @s EF_Joule matches 1200.. run data modify block ~ ~ ~ Items[-1] set value {Slot:4b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:2011931,SE_CustomTextureItem:1b,display:{Name:'[{"text":""}]'}}}
