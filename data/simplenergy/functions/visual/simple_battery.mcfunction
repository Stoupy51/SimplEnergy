#Update gui depends on Energy Stored
    execute if score @s EF_Joule matches ..0 run data modify block ~ ~ ~ Items append value {Slot:13b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:2011992,SE_CustomTextureItem:1b,display:{Name:'[{"text":"","italic":false}]'}}}
    execute if score @s EF_Joule matches 1..100 run data modify block ~ ~ ~ Items append value {Slot:13b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:2011991,SE_CustomTextureItem:1b,display:{Name:'[{"text":"","italic":false}]'}}}
    execute if score @s EF_Joule matches 101..199 run data modify block ~ ~ ~ Items append value {Slot:13b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:2011990,SE_CustomTextureItem:1b,display:{Name:'[{"text":"","italic":false}]'}}}
    execute if score @s EF_Joule matches 201..299 run data modify block ~ ~ ~ Items append value {Slot:13b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:2011989,SE_CustomTextureItem:1b,display:{Name:'[{"text":"","italic":false}]'}}}
    execute if score @s EF_Joule matches 301..399 run data modify block ~ ~ ~ Items append value {Slot:13b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:2011988,SE_CustomTextureItem:1b,display:{Name:'[{"text":"","italic":false}]'}}}
    execute if score @s EF_Joule matches 401..499 run data modify block ~ ~ ~ Items append value {Slot:13b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:2011987,SE_CustomTextureItem:1b,display:{Name:'[{"text":"","italic":false}]'}}}
    execute if score @s EF_Joule matches 501..599 run data modify block ~ ~ ~ Items append value {Slot:13b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:2011986,SE_CustomTextureItem:1b,display:{Name:'[{"text":"","italic":false}]'}}}
    execute if score @s EF_Joule matches 601..699 run data modify block ~ ~ ~ Items append value {Slot:13b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:2011985,SE_CustomTextureItem:1b,display:{Name:'[{"text":"","italic":false}]'}}}
    execute if score @s EF_Joule matches 701..799 run data modify block ~ ~ ~ Items append value {Slot:13b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:2011984,SE_CustomTextureItem:1b,display:{Name:'[{"text":"","italic":false}]'}}}
    execute if score @s EF_Joule matches 801..899 run data modify block ~ ~ ~ Items append value {Slot:13b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:2011983,SE_CustomTextureItem:1b,display:{Name:'[{"text":"","italic":false}]'}}}
    execute if score @s EF_Joule matches 901..999 run data modify block ~ ~ ~ Items append value {Slot:13b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:2011982,SE_CustomTextureItem:1b,display:{Name:'[{"text":"","italic":false}]'}}}
    execute if score @s EF_Joule matches 1001..1099 run data modify block ~ ~ ~ Items append value {Slot:13b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:2011981,SE_CustomTextureItem:1b,display:{Name:'[{"text":"","italic":false}]'}}}
    execute if score @s EF_Joule matches 1101..1199 run data modify block ~ ~ ~ Items append value {Slot:13b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:2011980,SE_CustomTextureItem:1b,display:{Name:'[{"text":"","italic":false}]'}}}
    execute if score @s EF_Joule matches 1201..1299 run data modify block ~ ~ ~ Items append value {Slot:13b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:2011979,SE_CustomTextureItem:1b,display:{Name:'[{"text":"","italic":false}]'}}}
    execute if score @s EF_Joule matches 1301..1399 run data modify block ~ ~ ~ Items append value {Slot:13b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:2011978,SE_CustomTextureItem:1b,display:{Name:'[{"text":"","italic":false}]'}}}
    execute if score @s EF_Joule matches 1401..1499 run data modify block ~ ~ ~ Items append value {Slot:13b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:2011977,SE_CustomTextureItem:1b,display:{Name:'[{"text":"","italic":false}]'}}}
    execute if score @s EF_Joule matches 1500.. run data modify block ~ ~ ~ Items append value {Slot:13b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:2011976,SE_CustomTextureItem:1b,display:{Name:'[{"text":"","italic":false}]'}}}

#Update Barrel Name depends on Energy Stored
    execute store result storage simplenergy:energy X int 1 run scoreboard players get @s EF_Joule
    setblock 0 0 0 oak_sign{Text1:'[{"text":"Charge : "},{"nbt":"X","storage":"simplenergy:energy"},{"text":"/1500 Joules"}]'}
    data modify block ~ ~ ~ CustomName set from block 0 0 0 Text1
    setblock 0 0 0 bedrock
