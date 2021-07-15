function simplenergy:place/look_all
execute as @e[type=minecraft:area_effect_cloud,tag=SE_Placed,limit=1] store result entity @s Pos[0] double 1 run data get entity @s Pos[0]
execute as @e[type=minecraft:area_effect_cloud,tag=SE_Placed,limit=1] store result entity @s Pos[1] double 1 run data get entity @s Pos[1]
execute as @e[type=minecraft:area_effect_cloud,tag=SE_Placed,limit=1] store result entity @s Pos[2] double 1 run data get entity @s Pos[2]
execute as @e[type=minecraft:area_effect_cloud,tag=SE_Placed,limit=1] at @s run tp @s ~0.5 ~ ~0.5

execute if entity @s[y_rotation=-46..45] at @e[type=minecraft:area_effect_cloud,tag=SE_Placed,limit=1] run setblock ~ ~ ~ furnace[facing=north]
execute if entity @s[y_rotation=46..135] at @e[type=minecraft:area_effect_cloud,tag=SE_Placed,limit=1] run setblock ~ ~ ~ furnace[facing=east]
execute if entity @s[y_rotation=136..225] at @e[type=minecraft:area_effect_cloud,tag=SE_Placed,limit=1] run setblock ~ ~ ~ furnace[facing=south]
execute if entity @s[y_rotation=226..315] at @e[type=minecraft:area_effect_cloud,tag=SE_Placed,limit=1] run setblock ~ ~ ~ furnace[facing=west]
execute if entity @s[y_rotation=-46..45] at @e[type=minecraft:area_effect_cloud,tag=SE_Placed,limit=1] run summon glow_item_frame ~ ~ ~ {ItemRotation:4b,Tags:["SE_Destroyer","SE_FurnaceGenerator","EF_Use","EF_CanSend","SE_SetNew"],Invisible:1b,Invulnerable:1b,Fixed:1b,Facing:1b,Item:{id:"cobblestone",Count:1b,tag:{CustomModelData:2012001}}}
execute if entity @s[y_rotation=46..135] at @e[type=minecraft:area_effect_cloud,tag=SE_Placed,limit=1] run summon glow_item_frame ~ ~ ~ {ItemRotation:6b,Tags:["SE_Destroyer","SE_FurnaceGenerator","EF_Use","EF_CanSend","SE_SetNew"],Invisible:1b,Invulnerable:1b,Fixed:1b,Facing:1b,Item:{id:"cobblestone",Count:1b,tag:{CustomModelData:2012001}}}
execute if entity @s[y_rotation=136..225] at @e[type=minecraft:area_effect_cloud,tag=SE_Placed,limit=1] run summon glow_item_frame ~ ~ ~ {ItemRotation:0b,Tags:["SE_Destroyer","SE_FurnaceGenerator","EF_Use","EF_CanSend","SE_SetNew"],Invisible:1b,Invulnerable:1b,Fixed:1b,Facing:1b,Item:{id:"cobblestone",Count:1b,tag:{CustomModelData:2012001}}}
execute if entity @s[y_rotation=226..315] at @e[type=minecraft:area_effect_cloud,tag=SE_Placed,limit=1] run summon glow_item_frame ~ ~ ~ {ItemRotation:2b,Tags:["SE_Destroyer","SE_FurnaceGenerator","EF_Use","EF_CanSend","SE_SetNew"],Invisible:1b,Invulnerable:1b,Fixed:1b,Facing:1b,Item:{id:"cobblestone",Count:1b,tag:{CustomModelData:2012001}}}
execute at @e[type=minecraft:area_effect_cloud,tag=SE_Placed,limit=1] as @e[type=minecraft:glow_item_frame,tag=EF_Wire,distance=..2] at @s run function simplenergy:visual/wire_update
execute at @e[type=minecraft:area_effect_cloud,tag=SE_Placed,limit=1] run data merge block ~ ~ ~ {CustomName:'{"text":"Furnace Generator"}',Items:[{Slot:0b,id:"minecraft:cobblestone",Count:1b,tag:{SE_CustomTextureItem:1b,CustomModelData:2011999,display:{Name:'[{"text":"","italic":false}]'}}}]}
scoreboard players set @e[type=minecraft:glow_item_frame,tag=SE_SetNew,limit=1] EF_Watt 10
scoreboard players set @e[type=minecraft:glow_item_frame,tag=SE_SetNew,limit=1] EF_Joule 0
scoreboard players set @e[type=minecraft:glow_item_frame,tag=SE_SetNew,limit=1] EF_EnergyStorage 800
tag @e[type=minecraft:glow_item_frame,tag=SE_SetNew,limit=1] remove SE_SetNew
kill @e[type=minecraft:area_effect_cloud,tag=SE_Placed,limit=1]
advancement revoke @s only simplenergy:place/furnace_generator
