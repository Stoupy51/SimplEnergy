#Define a -/+ value offset randomly with UUID.
#I divide values by 10 to keep a digit
#X can take a value between -40 & +40   Examples : -37.4, 14.3, 0.1, ...
#Y can take a value between -10 & +10   Examples : -7.7, 2.3, 0.1, ...
#Z can take a value between -40 & +40   Examples : -37.4, 14.3, 0.1, ...
    scoreboard players set 400 SF_Data 400
    scoreboard players set 100 SF_Data 100
    scoreboard players set -1 SF_Data -1
    execute store result score X SF_Data run data get entity @s UUID[1] 1
    execute store result score Y SF_Data run data get entity @s UUID[2] 1
    execute store result score Z SF_Data run data get entity @s UUID[3] 1
    scoreboard players operation NewX SF_Data = X SF_Data
    scoreboard players operation NewY SF_Data = Y SF_Data
    scoreboard players operation NewZ SF_Data = Z SF_Data
    scoreboard players operation NewX SF_Data %= 400 SF_Data
    scoreboard players operation NewY SF_Data %= 100 SF_Data
    scoreboard players operation NewZ SF_Data %= 400 SF_Data
    execute if score X SF_Data matches ..-1 run scoreboard players operation NewX SF_Data *= -1 SF_Data
    execute if score Y SF_Data matches ..-1 run scoreboard players operation NewY SF_Data *= -1 SF_Data
    execute if score Z SF_Data matches ..-1 run scoreboard players operation NewZ SF_Data *= -1 SF_Data
    execute store result score PosX SF_Data run data get entity @s Pos[0] 10
    execute store result score PosY SF_Data run data get entity @s Pos[1] 10
    execute store result score PosZ SF_Data run data get entity @s Pos[2] 10

#I add the offset to the coordinates
    scoreboard players operation PosX SF_Data += NewX SF_Data
    scoreboard players operation PosY SF_Data += NewY SF_Data
    scoreboard players operation PosZ SF_Data += NewZ SF_Data
    execute store result entity @s Pos[0] double 0.1 run scoreboard players get PosX SF_Data
    execute store result entity @s Pos[1] double 0.1 run scoreboard players get PosY SF_Data
    execute store result entity @s Pos[2] double 0.1 run scoreboard players get PosZ SF_Data

#Placing Ore
    execute at @s if block ~ ~ ~ minecraft:stone run summon glow_item_frame ~ ~ ~ {ItemRotation:0b,Tags:["SE_Destroyer","SE_SimpluniumOre"],Invisible:1b,Invulnerable:1b,Fixed:1b,Silent:1b,Facing:1b,Item:{id:"cobblestone",Count:1b,tag:{CustomModelData:2012899}}}
    execute at @s if block ~ ~ ~ minecraft:stone run setblock ~ ~ ~ deepslate_coal_ore
    execute at @s positioned ~0.2 ~0.2 ~0.2 if block ~ ~ ~ minecraft:stone run summon glow_item_frame ~ ~ ~ {ItemRotation:0b,Tags:["SE_Destroyer","SE_SimpluniumOre"],Invisible:1b,Invulnerable:1b,Fixed:1b,Silent:1b,Facing:1b,Item:{id:"cobblestone",Count:1b,tag:{CustomModelData:2012899}}}
    execute at @s positioned ~0.2 ~0.2 ~0.2 if block ~ ~ ~ minecraft:stone run setblock ~ ~ ~ deepslate_coal_ore
    execute at @s positioned ~ ~0.2 ~0.2 if block ~ ~ ~ minecraft:stone run summon glow_item_frame ~ ~ ~ {ItemRotation:0b,Tags:["SE_Destroyer","SE_SimpluniumOre"],Invisible:1b,Invulnerable:1b,Fixed:1b,Silent:1b,Facing:1b,Item:{id:"cobblestone",Count:1b,tag:{CustomModelData:2012899}}}
    execute at @s positioned ~ ~0.2 ~0.2 if block ~ ~ ~ minecraft:stone run setblock ~ ~ ~ deepslate_coal_ore
    execute at @s positioned ~0.2 ~0.2 ~ if block ~ ~ ~ minecraft:stone run summon glow_item_frame ~ ~ ~ {ItemRotation:0b,Tags:["SE_Destroyer","SE_SimpluniumOre"],Invisible:1b,Invulnerable:1b,Fixed:1b,Silent:1b,Facing:1b,Item:{id:"cobblestone",Count:1b,tag:{CustomModelData:2012899}}}
    execute at @s positioned ~0.2 ~0.2 ~ if block ~ ~ ~ minecraft:stone run setblock ~ ~ ~ deepslate_coal_ore
    execute at @s positioned ~0.2 ~ ~0.2 if block ~ ~ ~ minecraft:stone run summon glow_item_frame ~ ~ ~ {ItemRotation:0b,Tags:["SE_Destroyer","SE_SimpluniumOre"],Invisible:1b,Invulnerable:1b,Fixed:1b,Silent:1b,Facing:1b,Item:{id:"cobblestone",Count:1b,tag:{CustomModelData:2012899}}}
    execute at @s positioned ~0.2 ~ ~0.2 if block ~ ~ ~ minecraft:stone run setblock ~ ~ ~ deepslate_coal_ore
    execute at @s positioned ~ ~0.2 ~ if block ~ ~ ~ minecraft:stone run summon glow_item_frame ~ ~ ~ {ItemRotation:0b,Tags:["SE_Destroyer","SE_SimpluniumOre"],Invisible:1b,Invulnerable:1b,Fixed:1b,Silent:1b,Facing:1b,Item:{id:"cobblestone",Count:1b,tag:{CustomModelData:2012899}}}
    execute at @s positioned ~ ~0.2 ~ if block ~ ~ ~ minecraft:stone run setblock ~ ~ ~ deepslate_coal_ore
kill @s
