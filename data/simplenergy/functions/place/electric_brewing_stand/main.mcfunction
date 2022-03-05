
setblock ~ ~ ~ brewing_stand{CustomName:'{"text":"Electric Brewing Stand"}',Items:[{Slot:4b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:2011936,CustomItem:1b,SimplEnergy_CustomItem:1b,SimplEnergy_CustomTextureItem:1b,display:{Name:'[{"text":""}]'}}}]}
summon glow_item_frame ~ ~ ~ {ItemRotation:0b,Tags:["global.ignore","global.ignore.kill","smithed.block","SimplEnergy_Destroyer","SimplEnergy_ElectricBrewing","energy.receive","SimplEnergy_SetNew"],Invisible:1b,Invulnerable:1b,Fixed:1b,Silent:1b,Facing:1b,Item:{id:"cobblestone",Count:1b,tag:{CustomModelData:2012204}}}
execute as @e[type=glow_item_frame,tag=SimplEnergy_SetNew,limit=1] at @s run function simplenergy:place/electric_brewing_stand/secondary
