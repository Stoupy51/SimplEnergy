#Update gui depends on Energy Stored
    execute if score @s EF_Joule matches ..0 run data modify block ~ ~ ~ Items append value {Slot:13b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:2011953,SE_CustomTextureItem:1b,display:{Name:'[{"text":"","italic":false}]'}}}
    execute if score @s EF_Joule matches 1..555 run data modify block ~ ~ ~ Items append value {Slot:13b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:2011952,SE_CustomTextureItem:1b,display:{Name:'[{"text":"","italic":false}]'}}}
    execute if score @s EF_Joule matches 556..1110 run data modify block ~ ~ ~ Items append value {Slot:13b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:2011951,SE_CustomTextureItem:1b,display:{Name:'[{"text":"","italic":false}]'}}}
    execute if score @s EF_Joule matches 1111..1665 run data modify block ~ ~ ~ Items append value {Slot:13b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:2011950,SE_CustomTextureItem:1b,display:{Name:'[{"text":"","italic":false}]'}}}
    execute if score @s EF_Joule matches 1666..2220 run data modify block ~ ~ ~ Items append value {Slot:13b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:2011949,SE_CustomTextureItem:1b,display:{Name:'[{"text":"","italic":false}]'}}}
    execute if score @s EF_Joule matches 2221..2775 run data modify block ~ ~ ~ Items append value {Slot:13b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:2011948,SE_CustomTextureItem:1b,display:{Name:'[{"text":"","italic":false}]'}}}
    execute if score @s EF_Joule matches 2776..3330 run data modify block ~ ~ ~ Items append value {Slot:13b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:2011947,SE_CustomTextureItem:1b,display:{Name:'[{"text":"","italic":false}]'}}}
    execute if score @s EF_Joule matches 3331..3885 run data modify block ~ ~ ~ Items append value {Slot:13b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:2011946,SE_CustomTextureItem:1b,display:{Name:'[{"text":"","italic":false}]'}}}
    execute if score @s EF_Joule matches 3886..4440 run data modify block ~ ~ ~ Items append value {Slot:13b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:2011945,SE_CustomTextureItem:1b,display:{Name:'[{"text":"","italic":false}]'}}}
    execute if score @s EF_Joule matches 4441..4999 run data modify block ~ ~ ~ Items append value {Slot:13b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:2011944,SE_CustomTextureItem:1b,display:{Name:'[{"text":"","italic":false}]'}}}
    execute if score @s EF_Joule matches 5000.. run data modify block ~ ~ ~ Items append value {Slot:13b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:2011943,SE_CustomTextureItem:1b,display:{Name:'[{"text":"","italic":false}]'}}}

#Update Barrel Name depends on Energy Stored
    execute store result storage simplenergy:energy X int 1 run scoreboard players get @s EF_Joule
    setblock 0 0 0 oak_sign{Text1:'[{"text":"Charge : "},{"nbt":"X","storage":"simplenergy:energy"},{"text":"/5000 Joules"}]'}
    data modify block ~ ~ ~ CustomName set from block 0 0 0 Text1
    setblock 0 0 0 bedrock
