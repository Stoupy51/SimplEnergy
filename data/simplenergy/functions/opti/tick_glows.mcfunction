
execute if entity @s[tag=SimplEnergy_CraftingTable,predicate=simplenergy:is_barrel_open] if entity @p[distance=..7] run function simplenergy:craft/all
execute if entity @s[tag=SimplEnergy_ElectricSmelter] if score @s energy.storage matches 4.. run function simplenergy:work/electric_smelter
execute if entity @s[tag=SimplEnergy_ElectricBrewing] if score @s energy.storage matches 1.. run function simplenergy:work/electric_brewing_stand
