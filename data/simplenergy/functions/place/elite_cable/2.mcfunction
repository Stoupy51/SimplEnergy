setblock ~ ~ ~ minecraft:air
setblock ~ ~ ~ minecraft:player_head{SkullOwner:{Id:[I;-1416541,25415515,-3515615,-4156415],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjlmMzJjOWNkNTU2MzJmNjEzZjRhMDU2ZGEyYzJhYTkzZjMwOTk2ZGY2NzMxZTcyYmM1NDA4NzA4ZGE5MWYzOCJ9fX0="}]}},id:"minecraft:skull"}
summon item_frame ~ ~ ~ {ItemRotation:0b,Tags:["SE_Destroyer","SE_EliteCable","SE_Cable","SE_SetNew","energy.cable"],Invisible:1b,Invulnerable:1b,Fixed:1b,Silent:1b,Facing:1b,Item:{id:"cobblestone",Count:1b,tag:{CustomModelData:2012500}}}
#Call on a new cable to initialize its connections
execute align xyz as @e[type=item_frame,dx=0,dy=0,dz=0,limit=1,tag=SE_SetNew,tag=energy.cable] at @s run function energy:v1/api/init_cable
kill @s
