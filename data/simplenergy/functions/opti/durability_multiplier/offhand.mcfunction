
#Storing difference between old and new Durability in a score
	scoreboard players operation #temp simplenergy.data = #offhand simplenergy.data
	scoreboard players operation #temp simplenergy.data -= @s simplenergy.offhand

#Select random number between 0 and DurabilityMultiplier
	summon area_effect_cloud ~ ~ ~ {Tags:["simplenergy.temp"]}
	execute as @e[type=area_effect_cloud,tag=simplenergy.temp] run function simplenergy:opti/durability_multiplier/random

#Applying durability modifier
	function simplenergy:opti/durability_multiplier/durability_modifier
	item replace entity @s weapon.offhand from entity @s weapon.offhand simplenergy:selected_item
	execute if score #random simplenergy.data matches ..999 run scoreboard players operation @s simplenergy.offhand += #temp simplenergy.data
