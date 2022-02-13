
execute if entity @s[tag=SimplEnergy_CraftingTable,predicate=!simplenergy:is_barrel_open] if entity @p[distance=..7] run function simplenergy:craft/all

#Visuals & Work
	execute if entity @s[tag=SimplEnergy_CauldronGenerator] unless block ~ ~ ~ minecraft:cauldron unless score @s energy.storage matches 500.. run function simplenergy:work/cauldron_generator
	execute if entity @s[tag=SimplEnergy_SolarPanel] unless score @s energy.storage matches 600.. run function simplenergy:work/solar_panel
	execute if entity @s[tag=SimplEnergy_ElectricLamp] run function simplenergy:visual/electric_lamp
	execute if entity @s[tag=SimplEnergy_FurnaceGenerator] run function simplenergy:visual/furnace_generator
	execute if entity @s[tag=SimplEnergy_ElectricFurnace] run function simplenergy:visual/electric_furnace
	execute if entity @s[tag=SimplEnergy_ElectricSmelter] run function simplenergy:visual/electric_smelter
	execute if entity @s[tag=SimplEnergy_ElectricBrewing] run function simplenergy:visual/electric_brewing_stand

tag @s remove SimplEnergy_Balanced
