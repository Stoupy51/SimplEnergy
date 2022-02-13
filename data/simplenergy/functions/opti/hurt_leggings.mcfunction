
#Storing difference between old and new Durability in a score
	execute store result score Temp SimplEnergy_Data run data get storage simplenergy:items all.Temp[{Slot:101b}].tag.Damage 1
	scoreboard players operation Temp SimplEnergy_Data -= @s SimplEnergy_LeggingsDurability

#Select random number between 0 and DurabilityMultiplier
	summon area_effect_cloud ~ ~ ~ {Tags:["SimplEnergy_Temp"]}
	execute as @e[type=area_effect_cloud,tag=SimplEnergy_Temp] run function simplenergy:opti/random_hurt

#Applying durability modifier
	function simplenergy:opti/durability_modifier
	item replace entity @s armor.legs from entity @s armor.legs simplenergy:hurt_leggings
	execute if score Random SimplEnergy_Data matches 0 run scoreboard players operation @s SimplEnergy_LeggingsDurability += Temp SimplEnergy_Data
