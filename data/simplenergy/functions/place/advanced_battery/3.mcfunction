scoreboard players set @s EF_EnergyStorage 5000
scoreboard players operation @s EF_Joule = EF_Next EF_Joule
scoreboard players reset EF_Next EF_Joule
tag @s remove SE_SetNew
