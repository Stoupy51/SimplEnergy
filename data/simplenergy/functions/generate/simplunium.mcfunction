#Define a -/+ value offset randomly with UUID.
#I divide values by 10 to keep a digit
#X can take a value between -40 & +40   Examples : -37.4, 14.3, 0.1, ...
#Y can take a value between -10 & +10   Examples : -7.7, 2.3, 0.1, ...
#Z can take a value between -40 & +40   Examples : -37.4, 14.3, 0.1, ...
    scoreboard players set 400 SE_Data 400
    scoreboard players set 100 SE_Data 100
    scoreboard players set 10 SE_Data 10
    execute store result score X SE_Data run data get entity @s UUID[1] 1
    execute store result score Y SE_Data run data get entity @s UUID[2] 1
    execute store result score Z SE_Data run data get entity @s UUID[3] 1
    scoreboard players operation X SE_Data %= 400 SE_Data
    scoreboard players operation Y SE_Data %= 100 SE_Data
    scoreboard players operation Z SE_Data %= 400 SE_Data
    execute store result score PosX SE_Data run data get entity @s Pos[0] 10
    execute store result score PosZ SE_Data run data get entity @s Pos[2] 10

#I add the offset to the coordinates
    scoreboard players operation PosX SE_Data += X SE_Data
    scoreboard players operation PosY SE_Data += Y SE_Data
    scoreboard players operation PosZ SE_Data += Z SE_Data
    execute store result entity @s Pos[0] double 0.1 run scoreboard players get PosX SE_Data
    execute store result entity @s Pos[1] double 0.1 run scoreboard players get PosY SE_Data
    execute store result entity @s Pos[2] double 0.1 run scoreboard players get PosZ SE_Data

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
