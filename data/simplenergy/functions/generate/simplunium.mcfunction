#Define a -/+ value offset randomly with UUID.
#I divide values by 10 to keep a digit
#Init values
	execute store result score X SimplEnergy_Data run data get entity @s UUID[1] 1
	execute store result score Y SimplEnergy_Data run data get entity @s UUID[2] 1
	execute store result score Z SimplEnergy_Data run data get entity @s UUID[3] 1
	scoreboard players operation NewX SimplEnergy_Data = X SimplEnergy_Data
	scoreboard players operation NewY SimplEnergy_Data = Y SimplEnergy_Data
	scoreboard players operation NewZ SimplEnergy_Data = Z SimplEnergy_Data
	execute store result score PosX SimplEnergy_Data run data get entity @s Pos[0] 10
	execute store result score PosZ SimplEnergy_Data run data get entity @s Pos[2] 10

#Edit X Pos : X can take a value between -40 & +40   Examples : -37.4, 14.3, 0.1, ...
	scoreboard players operation NewX SimplEnergy_Data %= 400 SimplEnergy_Data
	execute if score X SimplEnergy_Data matches ..-1 run scoreboard players operation NewX SimplEnergy_Data *= -1 SimplEnergy_Data
	scoreboard players operation PosX SimplEnergy_Data += NewX SimplEnergy_Data

#Edit Z Pos : Z can take a value between -40 & +40   Examples : -37.4, 14.3, 0.1, ...
	scoreboard players operation NewZ SimplEnergy_Data %= 400 SimplEnergy_Data
	execute if score Z SimplEnergy_Data matches ..-1 run scoreboard players operation NewZ SimplEnergy_Data *= -1 SimplEnergy_Data
	scoreboard players operation PosZ SimplEnergy_Data += NewZ SimplEnergy_Data

#Edit Y Pos : Y can take a value between world bottom and y = 40
	scoreboard players operation PosY SimplEnergy_Data = WorldBottom SimplEnergy_Data
	scoreboard players operation PosY SimplEnergy_Data *= 10 SimplEnergy_Data
	scoreboard players operation MaxY SimplEnergy_Data = WorldBottom SimplEnergy_Data
	scoreboard players operation MaxY SimplEnergy_Data *= -10 SimplEnergy_Data
	scoreboard players operation MaxY SimplEnergy_Data += 260 SimplEnergy_Data
	scoreboard players operation NewY SimplEnergy_Data %= MaxY SimplEnergy_Data
	scoreboard players operation PosY SimplEnergy_Data += NewY SimplEnergy_Data

#Update Position
	execute store result entity @s Pos[0] double 0.1 run scoreboard players get PosX SimplEnergy_Data
	execute store result entity @s Pos[1] double 0.1 run scoreboard players get PosY SimplEnergy_Data
	execute store result entity @s Pos[2] double 0.1 run scoreboard players get PosZ SimplEnergy_Data

#Placing Ore
	execute at @s if block ~ ~ ~ #simplenergy:for_simplunium_ore run summon glow_item_frame ~ ~ ~ {ItemRotation:0b,Tags:["SimplEnergy_Destroyer","SimplEnergy_SimpluniumOre"],Invisible:1b,Invulnerable:1b,Fixed:1b,Silent:1b,Facing:1b,Item:{id:"cobblestone",Count:1b,tag:{CustomModelData:2012899}}}
	execute at @s if block ~ ~ ~ #simplenergy:for_simplunium_ore run setblock ~ ~ ~ deepslate_coal_ore
	execute at @s positioned ~0.8 ~0.8 ~0.8 if block ~ ~ ~ #simplenergy:for_simplunium_ore run summon glow_item_frame ~ ~ ~ {ItemRotation:0b,Tags:["SimplEnergy_Destroyer","SimplEnergy_SimpluniumOre"],Invisible:1b,Invulnerable:1b,Fixed:1b,Silent:1b,Facing:1b,Item:{id:"cobblestone",Count:1b,tag:{CustomModelData:2012899}}}
	execute at @s positioned ~0.8 ~0.8 ~0.8 if block ~ ~ ~ #simplenergy:for_simplunium_ore run setblock ~ ~ ~ deepslate_coal_ore
	execute at @s positioned ~ ~0.8 ~0.8 if block ~ ~ ~ #simplenergy:for_simplunium_ore run summon glow_item_frame ~ ~ ~ {ItemRotation:0b,Tags:["SimplEnergy_Destroyer","SimplEnergy_SimpluniumOre"],Invisible:1b,Invulnerable:1b,Fixed:1b,Silent:1b,Facing:1b,Item:{id:"cobblestone",Count:1b,tag:{CustomModelData:2012899}}}
	execute at @s positioned ~ ~0.8 ~0.8 if block ~ ~ ~ #simplenergy:for_simplunium_ore run setblock ~ ~ ~ deepslate_coal_ore
	execute at @s positioned ~0.8 ~0.8 ~ if block ~ ~ ~ #simplenergy:for_simplunium_ore run summon glow_item_frame ~ ~ ~ {ItemRotation:0b,Tags:["SimplEnergy_Destroyer","SimplEnergy_SimpluniumOre"],Invisible:1b,Invulnerable:1b,Fixed:1b,Silent:1b,Facing:1b,Item:{id:"cobblestone",Count:1b,tag:{CustomModelData:2012899}}}
	execute at @s positioned ~0.8 ~0.8 ~ if block ~ ~ ~ #simplenergy:for_simplunium_ore run setblock ~ ~ ~ deepslate_coal_ore
	execute at @s positioned ~0.8 ~ ~0.8 if block ~ ~ ~ #simplenergy:for_simplunium_ore run summon glow_item_frame ~ ~ ~ {ItemRotation:0b,Tags:["SimplEnergy_Destroyer","SimplEnergy_SimpluniumOre"],Invisible:1b,Invulnerable:1b,Fixed:1b,Silent:1b,Facing:1b,Item:{id:"cobblestone",Count:1b,tag:{CustomModelData:2012899}}}
	execute at @s positioned ~0.8 ~ ~0.8 if block ~ ~ ~ #simplenergy:for_simplunium_ore run setblock ~ ~ ~ deepslate_coal_ore
	execute at @s positioned ~ ~0.8 ~ if block ~ ~ ~ #simplenergy:for_simplunium_ore run summon glow_item_frame ~ ~ ~ {ItemRotation:0b,Tags:["SimplEnergy_Destroyer","SimplEnergy_SimpluniumOre"],Invisible:1b,Invulnerable:1b,Fixed:1b,Silent:1b,Facing:1b,Item:{id:"cobblestone",Count:1b,tag:{CustomModelData:2012899}}}
	execute at @s positioned ~ ~0.8 ~ if block ~ ~ ~ #simplenergy:for_simplunium_ore run setblock ~ ~ ~ deepslate_coal_ore
kill @s
