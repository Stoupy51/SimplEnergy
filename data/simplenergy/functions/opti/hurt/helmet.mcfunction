
#Storing difference between old and new Durability in a score
	scoreboard players operation Temp simplenergy.data = Helmet simplenergy.data
	scoreboard players operation Temp simplenergy.data -= @s simplenergy.head

#Select random number between 0 and DurabilityMultiplier
	summon area_effect_cloud ~ ~ ~ {Tags:["simplenergy.temp"]}
	execute as @e[type=area_effect_cloud,tag=simplenergy.temp] run function simplenergy:opti/hurt/random

#Applying durability modifier
	function simplenergy:opti/hurt/durability_modifier
	item replace entity @s armor.head from entity @s armor.head simplenergy:hurt_helmet
	execute if score Random simplenergy.data matches 0 run scoreboard players operation @s simplenergy.head += Temp simplenergy.data
