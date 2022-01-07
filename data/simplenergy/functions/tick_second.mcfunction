#Others
	scoreboard players set Second SimplEnergy_Data 0
	execute store result score DayTime SimplEnergy_Data run time query daytime
	execute as @e[type=glow_item_frame,tag=SimplEnergy_CraftingTable,predicate=!simplenergy:is_barrel_open] at @s if entity @p[distance=..7] run function simplenergy:craft/all
	execute as @e[type=item,nbt={Item:{tag:{SimplEnergy_SimpluniumIngot:1b}}}] at @s if block ~ ~-1 ~ minecraft:crafting_table run function simplenergy:place/simple_crafting_table
	execute as @a at @s run function simplenergy:generate/player
	execute as @e[type=glow_item_frame,tag=SimplEnergy_SolarPanel] at @s run function simplenergy:balance/all
	execute as @e[type=glow_item_frame,tag=SimplEnergy_CauldronGenerator] at @s run function simplenergy:balance/all
	execute as @e[type=glow_item_frame,tag=SimplEnergy_SimpleBattery] at @s run function simplenergy:balance/all
	execute as @e[type=glow_item_frame,tag=SimplEnergy_AdvancedBattery] at @s run function simplenergy:balance/all
	execute as @e[type=glow_item_frame,tag=SimplEnergy_EliteBattery] at @s run function simplenergy:balance/all
	execute as @a[tag=!SimplEnergy_FirstJoin] at @s run function simplenergy:first_join
	tag @e[type=glow_item_frame,tag=SimplEnergy_Balanced] remove SimplEnergy_Balanced
	execute as @e[type=marker,tag=SimplEnergy_Furnaces] at @s unless block ~ ~ ~ #simplenergy:furnaces run kill @s

#Visuals & Work
	execute as @e[type=glow_item_frame,tag=SimplEnergy_CauldronGenerator] at @s unless block ~ ~ ~ minecraft:cauldron unless score @s energy.storage matches 500.. run function simplenergy:work/cauldron_generator
	execute as @e[type=glow_item_frame,tag=SimplEnergy_SolarPanel] at @s unless score @s energy.storage matches 600.. run function simplenergy:work/solar_panel
	execute as @e[type=glow_item_frame,tag=SimplEnergy_ElectricLamp] at @s run function simplenergy:visual/electric_lamp
	execute as @e[type=glow_item_frame,tag=SimplEnergy_FurnaceGenerator] at @s run function simplenergy:visual/furnace_generator
	execute as @e[type=glow_item_frame,tag=SimplEnergy_ElectricFurnace] at @s run function simplenergy:visual/electric_furnace
	execute as @e[type=glow_item_frame,tag=SimplEnergy_ElectricSmelter] at @s run function simplenergy:visual/electric_smelter
	execute as @e[type=glow_item_frame,tag=SimplEnergy_ElectricBrewing] at @s run function simplenergy:visual/electric_brewing_stand

#Update From Old Energy System to New One
	execute as @e[tag=EF_Use] run function simplenergy:update_from_energy_flux
#Update Old Ores to New
	execute as @e[type=item_frame,tag=SimplEnergy_SimpluniumOre] at @s run function simplenergy:update_from_item_frame
