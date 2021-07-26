#Select a base Model Data depends on Wire
    scoreboard players set @s[tag=SE_SimpleWire] SE_Data 2012300
    scoreboard players set @s[tag=SE_AdvancedWire] SE_Data 2012400
    scoreboard players set @s[tag=SE_EliteWire] SE_Data 2012500

#Check at connected wires or machines
    execute positioned ~ ~-1 ~ if entity @e[type=minecraft:glow_item_frame,tag=EF_Use,limit=1,sort=nearest,distance=..0.1] run scoreboard players add @s SE_Data 1
    execute positioned ~ ~1 ~ if entity @e[type=minecraft:glow_item_frame,tag=EF_Use,limit=1,sort=nearest,distance=..0.1] run scoreboard players add @s SE_Data 2
    execute positioned ~ ~ ~-1 if entity @e[type=minecraft:glow_item_frame,tag=EF_Use,limit=1,sort=nearest,distance=..0.1] run scoreboard players add @s SE_Data 4
    execute positioned ~ ~ ~1 if entity @e[type=minecraft:glow_item_frame,tag=EF_Use,limit=1,sort=nearest,distance=..0.1] run scoreboard players add @s SE_Data 8
    execute positioned ~-1 ~ ~ if entity @e[type=minecraft:glow_item_frame,tag=EF_Use,limit=1,sort=nearest,distance=..0.1] run scoreboard players add @s SE_Data 16
    execute positioned ~1 ~ ~ if entity @e[type=minecraft:glow_item_frame,tag=EF_Use,limit=1,sort=nearest,distance=..0.1] run scoreboard players add @s SE_Data 32

#Update CustomModelData
    execute store result entity @s Item.tag.CustomModelData int 1 run scoreboard players get @s SE_Data
    scoreboard players reset @s SE_Data