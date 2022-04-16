
#Storing difference between old and new Durability in a score
	scoreboard players operation #temp simplenergy.data = #mainhand simplenergy.data
	scoreboard players operation #temp simplenergy.data -= @s simplenergy.mainhand

#Select random number between 0 and DurabilityMultiplier
	summon area_effect_cloud ~ ~ ~ {Tags:["simplenergy.temp"]}
	execute as @e[type=area_effect_cloud,tag=simplenergy.temp] run function simplenergy:opti/durability_multiplier/random

#Applying durability modifier
	function simplenergy:opti/durability_multiplier/durability_modifier
	item replace entity @s weapon.mainhand from entity @s weapon.mainhand simplenergy:selected_item
	execute if score #random simplenergy.data matches ..999 run scoreboard players operation @s simplenergy.mainhand += #temp simplenergy.data
