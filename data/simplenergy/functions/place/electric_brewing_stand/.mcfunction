
setblock ~ ~ ~ brewing_stand{CustomName:'{"text":"Electric Brewing Stand"}',Items:[{Slot:4b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:2011936,simplenergy:{texture_item:1b},display:{Name:'""'}}}]}
function simplenergy:place/glow_item_frame_0
execute as @e[tag=simplenergy.new] at @s run function simplenergy:place/electric_brewing_stand/secondary
