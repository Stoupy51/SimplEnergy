
#Storing difference between old and new Durability in a score
	execute store result score Temp SimplEnergy_Data run data get storage simplenergy:items all.Temp[{Slot:103b}].tag.Damage 1
	scoreboard players operation Temp SimplEnergy_Data -= @s SimplEnergy_HelmetDurability

#Select random number between 0 and DurabilityMultiplier
	summon area_effect_cloud ~ ~ ~ {Tags:["SimplEnergy_Temp"]}
	execute as @e[type=area_effect_cloud,tag=SimplEnergy_Temp] run function simplenergy:opti/random_hurt

#Applying durability modifier
	function simplenergy:opti/durability_modifier
	item replace entity @s armor.head from entity @s armor.head simplenergy:hurt_helmet
	execute if score Random SimplEnergy_Data matches 0 run scoreboard players operation @s SimplEnergy_HelmetDurability += Temp SimplEnergy_Data
