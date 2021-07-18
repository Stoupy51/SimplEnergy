execute store result entity @s Pos[0] double 0.1 run scoreboard players get PosX SE_Data
execute store result entity @s Pos[1] double 0.1 run scoreboard players get PosY SE_Data
execute store result entity @s Pos[2] double 0.1 run scoreboard players get PosZ SE_Data

execute at @s if block ~ ~ ~ minecraft:stone run summon glow_item_frame ~ ~ ~ {ItemRotation:0b,Tags:["SE_Destroyer","SE_SimpluniumOre"],Invisible:1b,Invulnerable:1b,Fixed:1b,Facing:1b,Item:{id:"cobblestone",Count:1b,tag:{CustomModelData:2012899}}}
execute at @s if block ~ ~ ~ minecraft:stone run setblock ~ ~ ~ deepslate_coal_ore
execute at @s positioned ~0.2 ~0.2 ~0.2 if block ~ ~ ~ minecraft:stone run summon glow_item_frame ~ ~ ~ {ItemRotation:0b,Tags:["SE_Destroyer","SE_SimpluniumOre"],Invisible:1b,Invulnerable:1b,Fixed:1b,Facing:1b,Item:{id:"cobblestone",Count:1b,tag:{CustomModelData:2012899}}}
execute at @s positioned ~0.2 ~0.2 ~0.2 if block ~ ~ ~ minecraft:stone run setblock ~ ~ ~ deepslate_coal_ore
execute at @s positioned ~ ~0.2 ~0.2 if block ~ ~ ~ minecraft:stone run summon glow_item_frame ~ ~ ~ {ItemRotation:0b,Tags:["SE_Destroyer","SE_SimpluniumOre"],Invisible:1b,Invulnerable:1b,Fixed:1b,Facing:1b,Item:{id:"cobblestone",Count:1b,tag:{CustomModelData:2012899}}}
execute at @s positioned ~ ~0.2 ~0.2 if block ~ ~ ~ minecraft:stone run setblock ~ ~ ~ deepslate_coal_ore
execute at @s positioned ~0.2 ~0.2 ~ if block ~ ~ ~ minecraft:stone run summon glow_item_frame ~ ~ ~ {ItemRotation:0b,Tags:["SE_Destroyer","SE_SimpluniumOre"],Invisible:1b,Invulnerable:1b,Fixed:1b,Facing:1b,Item:{id:"cobblestone",Count:1b,tag:{CustomModelData:2012899}}}
execute at @s positioned ~0.2 ~0.2 ~ if block ~ ~ ~ minecraft:stone run setblock ~ ~ ~ deepslate_coal_ore
execute at @s positioned ~0.2 ~ ~0.2 if block ~ ~ ~ minecraft:stone run summon glow_item_frame ~ ~ ~ {ItemRotation:0b,Tags:["SE_Destroyer","SE_SimpluniumOre"],Invisible:1b,Invulnerable:1b,Fixed:1b,Facing:1b,Item:{id:"cobblestone",Count:1b,tag:{CustomModelData:2012899}}}
execute at @s positioned ~0.2 ~ ~0.2 if block ~ ~ ~ minecraft:stone run setblock ~ ~ ~ deepslate_coal_ore
kill @s