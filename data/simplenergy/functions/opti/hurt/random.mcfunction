
#Select random number between 0 and DurabilityMultiplier
	execute store result score Random simplenergy.data run data get entity @s UUID[1]
	scoreboard players operation Random simplenergy.data %= DurabilityMultiplier simplenergy.data

kill @s
