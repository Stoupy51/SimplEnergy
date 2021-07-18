#Others
	scoreboard players set Second SE_Data 0
	execute store result score DayTime SE_Data run time query daytime
	execute as @e[type=item,nbt={Item:{tag:{SE_Simplunium:1b}}}] at @s if block ~ ~-1 ~ minecraft:crafting_table run function simplenergy:place/simple_crafting_table
	execute as @a at @s run function simplenergy:generate/player
	execute as @e[type=minecraft:glow_item_frame,tag=SE_SolarPanel] at @s run function simplenergy:balance/all
	execute as @e[type=minecraft:glow_item_frame,tag=SE_SimpleBattery] at @s run function simplenergy:balance/all
	execute as @e[type=minecraft:glow_item_frame,tag=SE_AdvancedBattery] at @s run function simplenergy:balance/all
	execute as @e[type=minecraft:glow_item_frame,tag=SE_EliteBattery] at @s run function simplenergy:balance/all
	tag @e[type=minecraft:glow_item_frame,tag=SE_Balanced] remove SE_Balanced

#Generators
	execute as @e[type=minecraft:glow_item_frame,tag=SE_CauldronGenerator] at @s unless block ~ ~ ~ minecraft:cauldron unless score @s EF_Joule matches 500.. run function simplenergy:work/cauldron_generator
	execute as @e[type=minecraft:glow_item_frame,tag=SE_FurnaceGenerator] at @s unless score @s EF_Joule matches 800.. run function simplenergy:work/furnace_generator
	execute as @e[type=minecraft:glow_item_frame,tag=SE_SolarPanel] at @s unless score @s EF_Joule matches 600.. run function simplenergy:work/solar_panel

#Power Consumers
	execute as @e[type=minecraft:glow_item_frame,tag=SE_ElectricFurnace] at @s if score @s EF_Joule matches 10.. run function simplenergy:work/electric_furnace
	execute as @e[type=minecraft:glow_item_frame,tag=SE_ElectricLamp] at @s run function simplenergy:visual/electric_lamp
	execute as @e[type=minecraft:glow_item_frame,tag=SE_ElectricLamp] at @s if score @s EF_Joule matches 1.. run scoreboard players remove @s EF_Joule 1

#Visuals
	execute as @e[type=minecraft:glow_item_frame,tag=SE_FurnaceGenerator] at @s run function simplenergy:visual/furnace_generator
	execute as @e[type=minecraft:glow_item_frame,tag=SE_SimpleBattery] at @s run function simplenergy:visual/simple_battery
	execute as @e[type=minecraft:glow_item_frame,tag=SE_AdvancedBattery] at @s run function simplenergy:visual/advanced_battery
	execute as @e[type=minecraft:glow_item_frame,tag=SE_EliteBattery] at @s run function simplenergy:visual/elite_battery
	execute as @e[type=minecraft:glow_item_frame,tag=SE_ElectricFurnace] at @s run function simplenergy:visual/electric_furnace
	execute as @e[type=minecraft:glow_item_frame,tag=SE_ElectricSmelter] at @s run function simplenergy:visual/electric_smelter
	execute as @e[type=minecraft:glow_item_frame,tag=SE_ElectricBrewing] at @s run function simplenergy:visual/electric_brewing_stand
