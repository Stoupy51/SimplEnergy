execute store result score EF_Next EF_kJ run data get block ~ ~ ~ Items[0].tag.Energy
setblock ~ ~ ~ cobbled_deepslate
summon glow_item_frame ~ ~ ~ {ItemRotation:0b,Tags:["SE_Destroyer","SE_SimpleBattery","EF_Use","EF_CanReceive","EF_CanSend","SE_SetNew"],Invisible:1b,Invulnerable:1b,Fixed:1b,Silent:1b,Facing:1b,Item:{id:"cobblestone",Count:1b,tag:{CustomModelData:2012100}}}
execute as @e[type=glow_item_frame,tag=EF_Wire,distance=..2] at @s run function energy_flux:wire_update
kill @s
