tag @s add SE_Balance
tag @s add SE_Balanced
execute as @e[type=glow_item_frame,tag=!SE_Balance,tag=SE_Destroyer,distance=..1.1] if score @s EF_kJmax = Energy SE_Data at @s run function simplenergy:balance/found
