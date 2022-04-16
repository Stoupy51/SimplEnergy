
#Select random number between 0 and DurabilityMultiplier
	execute store result score #random simplenergy.data run data get entity @s UUID[1]
	scoreboard players operation #random simplenergy.data %= #durability_multiplier simplenergy.data

kill @s
