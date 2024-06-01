
execute unless score #SimplEnergyLoaded load.status matches 1 run advancement revoke @s only simplenergy:first_join
execute if score #SimplEnergyLoaded load.status matches 1 run loot give @s loot simplenergy:i/simplenergy_manual

