
execute store result score data simplenergy.data run data get entity @s UUID[3]
scoreboard players operation data simplenergy.data %= 2 simplenergy.data

scoreboard players set Temp simplenergy.data 0
execute if score data simplenergy.data matches 0 run function simplenergy:generate/utils/variation_up
execute if score data simplenergy.data matches 0 if score Temp simplenergy.data matches 0 run function simplenergy:generate/utils/variation_down
execute if score data simplenergy.data matches 1 run function simplenergy:generate/utils/variation_down
execute if score data simplenergy.data matches 1 if score Temp simplenergy.data matches 0 run function simplenergy:generate/utils/variation_up

scoreboard players reset data simplenergy.data
