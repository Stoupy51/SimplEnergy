setblock ~ ~ ~ cauldron
summon glow_item_frame ~ ~ ~ {ItemRotation:0b,Tags:["SE_Destroyer","SE_CauldronGenerator","EF_Use","EF_CanSend","SE_SetNew"],Invisible:1b,Invulnerable:1b,Fixed:1b,Silent:1b,Facing:1b}
execute as @e[type=#energy_flux:entities,tag=EF_Wire,distance=..2] at @s run function energy_flux:wire_update
kill @s
