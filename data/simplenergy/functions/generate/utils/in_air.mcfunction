
execute store result score #random simplenergy.data run data get entity @s UUID[3]
scoreboard players operation #random simplenergy.data %= #2 simplenergy.data

scoreboard players set #temp simplenergy.data 0
execute if score #random simplenergy.data matches 0 run function simplenergy:generate/utils/variation_up
execute if score #random simplenergy.data matches 0 if score #temp simplenergy.data matches 0 run function simplenergy:generate/utils/variation_down
execute if score #random simplenergy.data matches 1 run function simplenergy:generate/utils/variation_down
execute if score #random simplenergy.data matches 1 if score #temp simplenergy.data matches 0 run function simplenergy:generate/utils/variation_up

scoreboard players reset #random simplenergy.data
