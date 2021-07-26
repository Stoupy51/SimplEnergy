#Update gui depends on Energy Stored
    execute if score @s EF_Joule matches ..0 run data modify block ~ ~ ~ Items append value {Slot:13b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:2011974,SE_CustomTextureItem:1b,display:{Name:'[{"text":"","italic":false}]'}}}
    execute if score @s EF_Joule matches 1..1052 run data modify block ~ ~ ~ Items append value {Slot:13b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:2011973,SE_CustomTextureItem:1b,display:{Name:'[{"text":"","italic":false}]'}}}
    execute if score @s EF_Joule matches 1053..2104 run data modify block ~ ~ ~ Items append value {Slot:13b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:2011972,SE_CustomTextureItem:1b,display:{Name:'[{"text":"","italic":false}]'}}}
    execute if score @s EF_Joule matches 2105..3156 run data modify block ~ ~ ~ Items append value {Slot:13b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:2011971,SE_CustomTextureItem:1b,display:{Name:'[{"text":"","italic":false}]'}}}
    execute if score @s EF_Joule matches 3157..4208 run data modify block ~ ~ ~ Items append value {Slot:13b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:2011970,SE_CustomTextureItem:1b,display:{Name:'[{"text":"","italic":false}]'}}}
    execute if score @s EF_Joule matches 4209..5260 run data modify block ~ ~ ~ Items append value {Slot:13b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:2011969,SE_CustomTextureItem:1b,display:{Name:'[{"text":"","italic":false}]'}}}
    execute if score @s EF_Joule matches 5261..6312 run data modify block ~ ~ ~ Items append value {Slot:13b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:2011968,SE_CustomTextureItem:1b,display:{Name:'[{"text":"","italic":false}]'}}}
    execute if score @s EF_Joule matches 6313..7364 run data modify block ~ ~ ~ Items append value {Slot:13b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:2011967,SE_CustomTextureItem:1b,display:{Name:'[{"text":"","italic":false}]'}}}
    execute if score @s EF_Joule matches 7365..8416 run data modify block ~ ~ ~ Items append value {Slot:13b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:2011966,SE_CustomTextureItem:1b,display:{Name:'[{"text":"","italic":false}]'}}}
    execute if score @s EF_Joule matches 8417..9468 run data modify block ~ ~ ~ Items append value {Slot:13b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:2011965,SE_CustomTextureItem:1b,display:{Name:'[{"text":"","italic":false}]'}}}
    execute if score @s EF_Joule matches 9469..10520 run data modify block ~ ~ ~ Items append value {Slot:13b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:2011964,SE_CustomTextureItem:1b,display:{Name:'[{"text":"","italic":false}]'}}}
    execute if score @s EF_Joule matches 10521..11572 run data modify block ~ ~ ~ Items append value {Slot:13b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:2011963,SE_CustomTextureItem:1b,display:{Name:'[{"text":"","italic":false}]'}}}
    execute if score @s EF_Joule matches 11573..12624 run data modify block ~ ~ ~ Items append value {Slot:13b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:2011962,SE_CustomTextureItem:1b,display:{Name:'[{"text":"","italic":false}]'}}}
    execute if score @s EF_Joule matches 12625..13676 run data modify block ~ ~ ~ Items append value {Slot:13b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:2011961,SE_CustomTextureItem:1b,display:{Name:'[{"text":"","italic":false}]'}}}
    execute if score @s EF_Joule matches 13677..14728 run data modify block ~ ~ ~ Items append value {Slot:13b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:2011960,SE_CustomTextureItem:1b,display:{Name:'[{"text":"","italic":false}]'}}}
    execute if score @s EF_Joule matches 14729..15780 run data modify block ~ ~ ~ Items append value {Slot:13b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:2011959,SE_CustomTextureItem:1b,display:{Name:'[{"text":"","italic":false}]'}}}
    execute if score @s EF_Joule matches 15781..16832 run data modify block ~ ~ ~ Items append value {Slot:13b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:2011958,SE_CustomTextureItem:1b,display:{Name:'[{"text":"","italic":false}]'}}}
    execute if score @s EF_Joule matches 16833..17884 run data modify block ~ ~ ~ Items append value {Slot:13b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:2011957,SE_CustomTextureItem:1b,display:{Name:'[{"text":"","italic":false}]'}}}
    execute if score @s EF_Joule matches 17885..18936 run data modify block ~ ~ ~ Items append value {Slot:13b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:2011956,SE_CustomTextureItem:1b,display:{Name:'[{"text":"","italic":false}]'}}}
    execute if score @s EF_Joule matches 18937..19999 run data modify block ~ ~ ~ Items append value {Slot:13b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:2011955,SE_CustomTextureItem:1b,display:{Name:'[{"text":"","italic":false}]'}}}
    execute if score @s EF_Joule matches 20000.. run data modify block ~ ~ ~ Items append value {Slot:13b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:2011954,SE_CustomTextureItem:1b,display:{Name:'[{"text":"","italic":false}]'}}}

#Update Barrel Name depends on Energy Stored
    execute store result storage simplenergy:energy X int 0.001 run scoreboard players get @s EF_Joule
    setblock 0 0 0 oak_sign{Text1:'[{"text":"Charge : "},{"nbt":"X","storage":"simplenergy:energy"},{"text":"/20 kJ"}]'}
    data modify block ~ ~ ~ CustomName set from block 0 0 0 Text1
    setblock 0 0 0 bedrock
