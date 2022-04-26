
#Objectives initialization
scoreboard objectives add durability_multiplier.data dummy
scoreboard objectives add durability_multiplier.head dummy
scoreboard objectives add durability_multiplier.chest dummy
scoreboard objectives add durability_multiplier.legs dummy
scoreboard objectives add durability_multiplier.feet dummy
scoreboard objectives add durability_multiplier.mainhand dummy
scoreboard objectives add durability_multiplier.offhand dummy

scoreboard players set #1000 durability_multiplier.data 1000

#define storage durability_multiplier:main

#Place a yellow shulker box for inventory manipulation
execute in minecraft:overworld run forceload add -29999999 2013
execute in minecraft:overworld run setblock -29999999 0 2013 minecraft:yellow_shulker_box
