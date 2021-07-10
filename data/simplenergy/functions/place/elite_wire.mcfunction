function simplenergy:place/look_all_head
execute as @e[type=minecraft:area_effect_cloud,tag=SE_Placed,limit=1] store result entity @s Pos[0] double 1 run data get entity @s Pos[0]
execute as @e[type=minecraft:area_effect_cloud,tag=SE_Placed,limit=1] store result entity @s Pos[1] double 1 run data get entity @s Pos[1]
execute as @e[type=minecraft:area_effect_cloud,tag=SE_Placed,limit=1] store result entity @s Pos[2] double 1 run data get entity @s Pos[2]
execute as @e[type=minecraft:area_effect_cloud,tag=SE_Placed,limit=1] at @s run tp @s ~0.5 ~ ~0.5

execute at @e[type=minecraft:area_effect_cloud,tag=SE_Placed,limit=1] run setblock ~ ~ ~ minecraft:air
execute at @e[type=minecraft:area_effect_cloud,tag=SE_Placed,limit=1] run setblock ~ ~ ~ minecraft:player_head{SkullOwner:{Id:[I;-1416541,25415515,-3515615,-4156415],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjlmMzJjOWNkNTU2MzJmNjEzZjRhMDU2ZGEyYzJhYTkzZjMwOTk2ZGY2NzMxZTcyYmM1NDA4NzA4ZGE5MWYzOCJ9fX0="}]}},id:"minecraft:skull"}
execute at @e[type=minecraft:area_effect_cloud,tag=SE_Placed,limit=1] run summon armor_stand ~ ~ ~ {Tags:["SE_Destroyer","SE_EliteWire","EF_Use","SE_SetNew","EF_Wire"],Fire:32767,Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,Marker:1b,Fire:32767,Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},ShowArms:1b}
execute at @e[type=minecraft:area_effect_cloud,tag=SE_Placed,limit=1] as @e[type=minecraft:armor_stand,tag=EF_Wire,distance=..2] at @s run function simplenergy:work/wire_update
scoreboard players set @e[type=minecraft:armor_stand,tag=SE_SetNew,limit=1] EF_Watt 180
tag @e[type=minecraft:armor_stand,tag=SE_SetNew,limit=1] remove SE_SetNew
execute at @e[type=minecraft:area_effect_cloud,tag=SE_Placed,limit=1] run playsound minecraft:block.stone.place block @a ~ ~ ~ 2
kill @e[type=minecraft:area_effect_cloud,tag=SE_Placed,limit=1]

advancement revoke @s only simplenergy:place/elite_wire