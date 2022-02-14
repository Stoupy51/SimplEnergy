
#Storing difference between old and new Durability in a score
	scoreboard players operation Temp SimplEnergy_Data = Leggings SimplEnergy_Data
	scoreboard players operation Temp SimplEnergy_Data -= @s SimplEnergy_LeggingsDurability

#Select random number between 0 and DurabilityMultiplier
	summon area_effect_cloud ~ ~ ~ {Tags:["SimplEnergy_Temp"]}
	execute as @e[type=area_effect_cloud,tag=SimplEnergy_Temp] run function simplenergy:opti/hurt/random

#Applying durability modifier
	function simplenergy:opti/hurt/durability_modifier
	item replace entity @s armor.legs from entity @s armor.legs simplenergy:hurt_leggings
	execute if score Random SimplEnergy_Data matches 0 run scoreboard players operation @s SimplEnergy_LeggingsDurability += Temp SimplEnergy_Data
