
#Storing difference between old and new Durability in a score
	scoreboard players operation #temp simplenergy.data = #boots simplenergy.data
	scoreboard players operation #temp simplenergy.data -= @s simplenergy.boots

#Select random number between 0 and DurabilityMultiplier
	summon area_effect_cloud ~ ~ ~ {Tags:["simplenergy.temp"]}
	execute as @e[type=area_effect_cloud,tag=simplenergy.temp] run function simplenergy:opti/hurt/random

#Applying durability modifier
	function simplenergy:opti/hurt/durability_modifier
	item replace entity @s armor.feet from entity @s armor.feet simplenergy:hurt_boots
	execute if score #random simplenergy.data matches 0 run scoreboard players operation @s simplenergy.boots += #temp simplenergy.data
