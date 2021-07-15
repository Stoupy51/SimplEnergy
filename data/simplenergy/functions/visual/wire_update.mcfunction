scoreboard players set @s[tag=SE_SimpleWire] SE_Timer 2012300
scoreboard players set @s[tag=SE_AdvancedWire] SE_Timer 2012400
scoreboard players set @s[tag=SE_EliteWire] SE_Timer 2012500

execute positioned ~ ~-1 ~ if entity @e[type=minecraft:glow_item_frame,tag=EF_Use,limit=1,sort=nearest,distance=..0.1] run scoreboard players add @s SE_Timer 1
execute positioned ~ ~1 ~ if entity @e[type=minecraft:glow_item_frame,tag=EF_Use,limit=1,sort=nearest,distance=..0.1] run scoreboard players add @s SE_Timer 2
execute positioned ~ ~ ~-1 if entity @e[type=minecraft:glow_item_frame,tag=EF_Use,limit=1,sort=nearest,distance=..0.1] run scoreboard players add @s SE_Timer 4
execute positioned ~ ~ ~1 if entity @e[type=minecraft:glow_item_frame,tag=EF_Use,limit=1,sort=nearest,distance=..0.1] run scoreboard players add @s SE_Timer 8
execute positioned ~-1 ~ ~ if entity @e[type=minecraft:glow_item_frame,tag=EF_Use,limit=1,sort=nearest,distance=..0.1] run scoreboard players add @s SE_Timer 16
execute positioned ~1 ~ ~ if entity @e[type=minecraft:glow_item_frame,tag=EF_Use,limit=1,sort=nearest,distance=..0.1] run scoreboard players add @s SE_Timer 32

execute store result entity @s Item.tag.CustomModelData int 1 run scoreboard players get @s SE_Timer
