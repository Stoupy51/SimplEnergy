function simplenergy:place/look_all
execute as @e[type=minecraft:area_effect_cloud,tag=SE_Placed,limit=1] store result entity @s Pos[0] double 1 run data get entity @s Pos[0]
execute as @e[type=minecraft:area_effect_cloud,tag=SE_Placed,limit=1] store result entity @s Pos[1] double 1 run data get entity @s Pos[1]
execute as @e[type=minecraft:area_effect_cloud,tag=SE_Placed,limit=1] store result entity @s Pos[2] double 1 run data get entity @s Pos[2]
execute as @e[type=minecraft:area_effect_cloud,tag=SE_Placed,limit=1] at @s run tp @s ~0.5 ~ ~0.5

execute if entity @s[y_rotation=-46..45] at @e[type=minecraft:area_effect_cloud,tag=SE_Placed,limit=1] run setblock ~ ~ ~ furnace[facing=north]{CustomName:'{"text":"Electric Smelter"}',Items:[{Slot:1b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:2011942,SE_CustomTextureItem:1b,display:{Name:'[{"text":"","italic":false}]'}}}]}
execute if entity @s[y_rotation=46..135] at @e[type=minecraft:area_effect_cloud,tag=SE_Placed,limit=1] run setblock ~ ~ ~ furnace[facing=east]{CustomName:'{"text":"Electric Smelter"}',Items:[{Slot:1b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:2011942,SE_CustomTextureItem:1b,display:{Name:'[{"text":"","italic":false}]'}}}]}
execute if entity @s[y_rotation=136..225] at @e[type=minecraft:area_effect_cloud,tag=SE_Placed,limit=1] run setblock ~ ~ ~ furnace[facing=south]{CustomName:'{"text":"Electric Smelter"}',Items:[{Slot:1b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:2011942,SE_CustomTextureItem:1b,display:{Name:'[{"text":"","italic":false}]'}}}]}
execute if entity @s[y_rotation=226..315] at @e[type=minecraft:area_effect_cloud,tag=SE_Placed,limit=1] run setblock ~ ~ ~ furnace[facing=west]{CustomName:'{"text":"Electric Smelter"}',Items:[{Slot:1b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:2011942,SE_CustomTextureItem:1b,display:{Name:'[{"text":"","italic":false}]'}}}]}
execute if entity @s[y_rotation=-46..45] at @e[type=minecraft:area_effect_cloud,tag=SE_Placed,limit=1] run summon armor_stand ~ ~ ~ {Rotation:[180f],Tags:["SE_Destroyer","SE_ElectricSmelter","EF_Use","EF_CanReceive","SE_SetNew"],Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,Marker:1b,HasVisualFire:1,ArmorItems:[{},{},{},{id:"cobblestone",Count:1b,tag:{CustomModelData:2012302}}]}
execute if entity @s[y_rotation=46..135] at @e[type=minecraft:area_effect_cloud,tag=SE_Placed,limit=1] run summon armor_stand ~ ~ ~ {Rotation:[270f],Tags:["SE_Destroyer","SE_ElectricSmelter","EF_Use","EF_CanReceive","SE_SetNew"],Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,Marker:1b,HasVisualFire:1,ArmorItems:[{},{},{},{id:"cobblestone",Count:1b,tag:{CustomModelData:2012302}}]}
execute if entity @s[y_rotation=136..225] at @e[type=minecraft:area_effect_cloud,tag=SE_Placed,limit=1] run summon armor_stand ~ ~ ~ {Rotation:[0f],Tags:["SE_Destroyer","SE_ElectricSmelter","EF_Use","EF_CanReceive","SE_SetNew"],Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,Marker:1b,HasVisualFire:1,ArmorItems:[{},{},{},{id:"cobblestone",Count:1b,tag:{CustomModelData:2012302}}]}
execute if entity @s[y_rotation=226..315] at @e[type=minecraft:area_effect_cloud,tag=SE_Placed,limit=1] run summon armor_stand ~ ~ ~ {Rotation:[90f],Tags:["SE_Destroyer","SE_ElectricSmelter","EF_Use","EF_CanReceive","SE_SetNew"],Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,Marker:1b,HasVisualFire:1,ArmorItems:[{},{},{},{id:"cobblestone",Count:1b,tag:{CustomModelData:2012302}}]}
execute at @e[type=minecraft:area_effect_cloud,tag=SE_Placed,limit=1] as @e[type=minecraft:armor_stand,tag=EF_Wire,distance=..2] at @s run function simplenergy:work/wire_update
scoreboard players set @e[type=minecraft:armor_stand,tag=SE_SetNew,limit=1] EF_Watt 80
scoreboard players set @e[type=minecraft:armor_stand,tag=SE_SetNew,limit=1] EF_Joule 0
scoreboard players set @e[type=minecraft:armor_stand,tag=SE_SetNew,limit=1] EF_EnergyStorage 6400
tag @e[type=minecraft:armor_stand,tag=SE_SetNew,limit=1] remove SE_SetNew
execute at @e[type=minecraft:area_effect_cloud,tag=SE_Placed,limit=1] run playsound minecraft:block.stone.place block @a ~ ~ ~ 2
kill @e[type=minecraft:area_effect_cloud,tag=SE_Placed,limit=1]

advancement revoke @s only simplenergy:place/electric_smelter