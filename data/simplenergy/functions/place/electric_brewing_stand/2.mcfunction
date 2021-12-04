setblock ~ ~ ~ brewing_stand{CustomName:'{"text":"Electric Brewing Stand"}',Items:[{Slot:4b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:2011936,CustomItem:1b,SE_CustomTextureItem:1b,display:{Name:'[{"text":""}]'}}}]}
summon glow_item_frame ~ ~ ~ {ItemRotation:0b,Tags:["SE_Destroyer","SE_ElectricBrewing","EF_Use","EF_CanReceive","SE_SetNew"],Invisible:1b,Invulnerable:1b,Fixed:1b,Silent:1b,Facing:1b,Item:{id:"cobblestone",Count:1b,tag:{CustomModelData:2012204}}}
function energy_flux:wire_update
kill @s
