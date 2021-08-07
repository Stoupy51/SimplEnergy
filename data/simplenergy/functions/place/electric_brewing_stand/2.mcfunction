setblock ~ ~ ~ brewing_stand{CustomName:'{"text":"Electric Brewing Stand"}',Items:[{Slot:4b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:2011936,SE_CustomTextureItem:1b,display:{Name:'[{"text":"","italic":false}]'}}}]}
summon glow_item_frame ~ ~ ~ {ItemRotation:0b,Tags:["SE_Destroyer","SE_ElectricBrewing","EF_Use","EF_CanReceive","SE_SetNew"],Invisible:1b,Invulnerable:1b,Fixed:1b,Silent:1b,Facing:1b,Item:{id:"cobblestone",Count:1b,tag:{CustomModelData:2012204}}}
execute as @e[type=minecraft:glow_item_frame,tag=EF_Wire,distance=..2] at @s run function simplenergy:visual/wire_update
kill @s
