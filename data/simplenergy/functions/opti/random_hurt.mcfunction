
#Select random number between 0 and DurabilityMultiplier
	execute store result score Random SimplEnergy_Data run data get entity @s UUID[1]
	scoreboard players operation Random SimplEnergy_Data %= DurabilityMultiplier SimplEnergy_Data

kill @s
