
#Storing difference between old and new Durability in a score
	scoreboard players operation temp simplenergy.data = Leggings simplenergy.data
	scoreboard players operation temp simplenergy.data -= @s simplenergy.legs

#Select random number between 0 and DurabilityMultiplier
	summon area_effect_cloud ~ ~ ~ {Tags:["simplenergy.temp"]}
	execute as @e[type=area_effect_cloud,tag=simplenergy.temp] run function simplenergy:opti/hurt/random

#Applying durability modifier
	function simplenergy:opti/hurt/durability_modifier
	item replace entity @s armor.legs from entity @s armor.legs simplenergy:hurt_leggings
	execute if score Random simplenergy.data matches 0 run scoreboard players operation @s simplenergy.legs += temp simplenergy.data
