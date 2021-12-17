execute as @a[tag=SE_Placer,y_rotation=-46..45] run setblock ~ ~ ~ furnace[facing=north]
execute as @a[tag=SE_Placer,y_rotation=46..135] run setblock ~ ~ ~ furnace[facing=east]
execute as @a[tag=SE_Placer,y_rotation=136..225] run setblock ~ ~ ~ furnace[facing=south]
execute as @a[tag=SE_Placer,y_rotation=226..315] run setblock ~ ~ ~ furnace[facing=west]
execute as @a[tag=SE_Placer,y_rotation=-46..45] run summon glow_item_frame ~ ~ ~ {ItemRotation:4b,Tags:["SE_Destroyer","SE_FurnaceGenerator","energy.send","SE_SetNew"],Invisible:1b,Invulnerable:1b,Fixed:1b,Silent:1b,Facing:1b,Item:{id:"cobblestone",Count:1b,tag:{CustomModelData:2012001}}}
execute as @a[tag=SE_Placer,y_rotation=46..135] run summon glow_item_frame ~ ~ ~ {ItemRotation:6b,Tags:["SE_Destroyer","SE_FurnaceGenerator","energy.send","SE_SetNew"],Invisible:1b,Invulnerable:1b,Fixed:1b,Silent:1b,Facing:1b,Item:{id:"cobblestone",Count:1b,tag:{CustomModelData:2012001}}}
execute as @a[tag=SE_Placer,y_rotation=136..225] run summon glow_item_frame ~ ~ ~ {ItemRotation:0b,Tags:["SE_Destroyer","SE_FurnaceGenerator","energy.send","SE_SetNew"],Invisible:1b,Invulnerable:1b,Fixed:1b,Silent:1b,Facing:1b,Item:{id:"cobblestone",Count:1b,tag:{CustomModelData:2012001}}}
execute as @a[tag=SE_Placer,y_rotation=226..315] run summon glow_item_frame ~ ~ ~ {ItemRotation:2b,Tags:["SE_Destroyer","SE_FurnaceGenerator","energy.send","SE_SetNew"],Invisible:1b,Invulnerable:1b,Fixed:1b,Silent:1b,Facing:1b,Item:{id:"cobblestone",Count:1b,tag:{CustomModelData:2012001}}}
#Call on a new machine to initialize its connections
execute align xyz as @e[type=glow_item_frame,dx=0,dy=0,dz=0,limit=1,tag=SE_SetNew,tag=!energy.cable] at @s run function energy:v1/api/init_machine
kill @s
