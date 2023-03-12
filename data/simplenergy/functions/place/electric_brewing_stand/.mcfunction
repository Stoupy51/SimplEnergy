
setblock ~ ~ ~ brewing_stand{CustomName:'{"text":"Electric Brewing Stand"}',Items:[{Slot:4b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:2011936,simplenergy:{texture_item:1b},display:{Name:'""'}}}]}
execute align xyz positioned ~.5 ~.5 ~.5 summon item_display at @s run function simplenergy:place/electric_brewing_stand/secondary

