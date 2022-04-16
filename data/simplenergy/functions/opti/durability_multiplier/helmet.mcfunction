
#Storing difference between old and new Durability in a score
	scoreboard players operation #temp simplenergy.data = #helmet simplenergy.data
	scoreboard players operation #temp simplenergy.data -= @s simplenergy.head

#Select random number between 0 and DurabilityMultiplier
	summon area_effect_cloud ~ ~ ~ {Tags:["simplenergy.temp"]}
	execute as @e[type=area_effect_cloud,tag=simplenergy.temp] run function simplenergy:opti/durability_multiplier/random

#Applying durability modifier
	function simplenergy:opti/durability_multiplier/durability_modifier
	item replace entity @s armor.head from entity @s armor.head simplenergy:hurt_helmet
	execute if score #random simplenergy.data matches ..999 run scoreboard players operation @s simplenergy.head += #temp simplenergy.data
