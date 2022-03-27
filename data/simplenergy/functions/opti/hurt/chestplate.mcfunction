
#Storing difference between old and new Durability in a score
	scoreboard players operation #temp simplenergy.data = #chestplate simplenergy.data
	scoreboard players operation #temp simplenergy.data -= @s simplenergy.chest

#Select random number between 0 and DurabilityMultiplier
	summon area_effect_cloud ~ ~ ~ {Tags:["simplenergy.temp"]}
	execute as @e[type=area_effect_cloud,tag=simplenergy.temp] run function simplenergy:opti/hurt/random

#Applying durability modifier
	function simplenergy:opti/hurt/durability_modifier
	item replace entity @s armor.chest from entity @s armor.chest simplenergy:hurt_chestplate
	execute if score #random simplenergy.data matches 0 run scoreboard players operation @s simplenergy.chest += #temp simplenergy.data
