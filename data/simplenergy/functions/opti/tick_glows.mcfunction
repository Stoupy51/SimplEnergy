
execute if entity @s[tag=simplenergy.electric_smelter] if score @s energy.storage matches 4.. run function simplenergy:work/electric_smelter
execute if entity @s[tag=simplenergy.electric_brewing_stand] if score @s energy.storage matches 1.. run function simplenergy:work/electric_brewing_stand
