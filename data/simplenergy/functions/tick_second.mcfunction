#Others
	scoreboard players set Second SimplEnergy_Data 0
	execute store result score DayTime SimplEnergy_Data run time query daytime
	execute as @e[type=glow_item_frame,tag=SimplEnergy_Balancing,limit=1] at @s run function simplenergy:balance/all
	execute as @e[type=glow_item_frame,tag=SimplEnergy_Destroyer] at @s run function simplenergy:opti/tick_second_glows
	execute as @e[type=item,nbt={Item:{tag:{SimplEnergy_SimpluniumIngot:1b}}}] at @s if block ~ ~-1 ~ minecraft:crafting_table run function simplenergy:place/simple_crafting_table
	execute as @a at @a run function simplenergy:opti/tick_second_players
	execute as @e[type=marker,tag=SimplEnergy_Furnaces] at @s unless block ~ ~ ~ #simplenergy:furnaces run kill @s

#Update From Old Energy System to New One
	#execute as @e[tag=EF_Use] run function simplenergy:update_from_energy_flux
#Update Old Ores to New
	#execute as @e[type=item_frame,tag=SimplEnergy_SimpluniumOre] at @s run function simplenergy:update_from_item_frame
