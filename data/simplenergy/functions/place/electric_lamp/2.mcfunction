setblock ~ ~ ~ redstone_lamp
summon glow_item_frame ~ ~ ~ {ItemRotation:0b,Tags:["SE_Destroyer","SE_ElectricLamp","EF_Use","EF_CanReceive","SE_SetNew"],Invisible:1b,Invulnerable:1b,Fixed:1b,Facing:1b,Item:{id:"cobblestone",Count:1b,tag:{CustomModelData:2012205}}}
execute as @e[type=minecraft:glow_item_frame,tag=EF_Wire,distance=..2] at @s run function simplenergy:visual/wire_update
kill @s
