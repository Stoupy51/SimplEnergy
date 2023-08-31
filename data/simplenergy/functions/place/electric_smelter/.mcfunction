
scoreboard players set #success simplenergy.data 0
execute store success score #success simplenergy.data if entity @s[y_rotation=-46..45] run setblock ~ ~ ~ furnace[facing=north]{CustomName:'{"text":"Electric Smelter"}',Items:[{Slot:1b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:2011942,simplenergy:{texture_item:1b},display:{Name:'""'}}}]}
execute if score #success simplenergy.data matches 0 store success score #success simplenergy.data if entity @s[y_rotation=45..135] run setblock ~ ~ ~ furnace[facing=east]{CustomName:'{"text":"Electric Smelter"}',Items:[{Slot:1b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:2011942,simplenergy:{texture_item:1b},display:{Name:'""'}}}]}
execute if score #success simplenergy.data matches 0 store success score #success simplenergy.data if entity @s[y_rotation=135..225] run setblock ~ ~ ~ furnace[facing=south]{CustomName:'{"text":"Electric Smelter"}',Items:[{Slot:1b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:2011942,simplenergy:{texture_item:1b},display:{Name:'""'}}}]}
execute if score #success simplenergy.data matches 0 store success score #success simplenergy.data if entity @s[y_rotation=225..315] run setblock ~ ~ ~ furnace[facing=west]{CustomName:'{"text":"Electric Smelter"}',Items:[{Slot:1b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:2011942,simplenergy:{texture_item:1b},display:{Name:'""'}}}]}
function furnace_nbt_recipes:v1.2/advancements/placed_furnace

execute align xyz positioned ~.5 ~.5 ~.5 summon item_display at @s run function simplenergy:place/electric_smelter/secondary

