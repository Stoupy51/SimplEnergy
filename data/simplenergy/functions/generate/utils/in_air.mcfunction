
execute store result score data SimplEnergy_Data run data get entity @s UUID[3]
scoreboard players operation data SimplEnergy_Data %= 2 SimplEnergy_Data

scoreboard players set Temp SimplEnergy_Data 0
execute if score data SimplEnergy_Data matches 0 run function simplenergy:generate/utils/variation_up
execute if score data SimplEnergy_Data matches 0 if score Temp SimplEnergy_Data matches 0 run function simplenergy:generate/utils/variation_down
execute if score data SimplEnergy_Data matches 1 run function simplenergy:generate/utils/variation_down
execute if score data SimplEnergy_Data matches 1 if score Temp SimplEnergy_Data matches 0 run function simplenergy:generate/utils/variation_up

scoreboard players reset data SimplEnergy_Data
