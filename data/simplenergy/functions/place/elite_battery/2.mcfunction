setblock ~ ~ ~ iron_block
summon glow_item_frame ~ ~ ~ {ItemRotation:0b,Tags:["SE_Destroyer","SE_EliteBattery","EF_Use","EF_CanReceive","EF_CanSend","SE_SetNew"],Invisible:1b,Invulnerable:1b,Fixed:1b,Silent:1b,Facing:1b,Item:{id:"cobblestone",Count:1b,tag:{CustomModelData:2012102}}}
function energy_flux:wire_update
kill @s
