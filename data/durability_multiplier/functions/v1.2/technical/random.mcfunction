
#Select random number between 0 and #multiplier
execute store result score #random durability_multiplier.data run data get entity @s UUID[0]
scoreboard players operation #random durability_multiplier.data %= #multiplier durability_multiplier.data

kill @s
