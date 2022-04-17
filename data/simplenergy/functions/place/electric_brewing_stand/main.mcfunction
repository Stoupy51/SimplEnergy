
setblock ~ ~ ~ brewing_stand{CustomName:'{"text":"Electric Brewing Stand"}',Items:[{Slot:4b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:2011936,simplenergy:{texture_item:1b},display:{Name:'[{"text":""}]'}}}]}
summon glow_item_frame ~ ~ ~ {ItemRotation:0b,Tags:["global.ignore","global.ignore.kill","smithed.block","simplenergy.destroyer","simplenergy.electric_brewing_stand","simplenergy.tick_glows","energy.receive","simplenergy.new"],Invisible:1b,Invulnerable:1b,Fixed:1b,Silent:1b,Facing:1b,Item:{id:"barrel",Count:1b,tag:{CustomModelData:2012404}}}
execute as @e[type=glow_item_frame,tag=simplenergy.new,limit=1] at @s run function simplenergy:place/electric_brewing_stand/secondary
