setblock ~ ~ ~ cauldron
summon glow_item_frame ~ ~ ~ {ItemRotation:0b,Tags:["SE_Destroyer","SE_CauldronGenerator","energy.send","SE_SetNew"],Invisible:1b,Invulnerable:1b,Fixed:1b,Silent:1b,Facing:1b}
#Call on a new machine to initialize its connections
execute align xyz as @e[type=glow_item_frame,dx=0,dy=0,dz=0,limit=1,tag=SE_SetNew,tag=!energy.cable] at @s run function energy:v1/api/init_machine
kill @s
