
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
execute in minecraft:overworld run forceload add -30000000 1600

schedule function durability_multiplier:v1.0/load_delayed 2s replace
schedule function durability_multiplier:v1.0/tick 2s replace
