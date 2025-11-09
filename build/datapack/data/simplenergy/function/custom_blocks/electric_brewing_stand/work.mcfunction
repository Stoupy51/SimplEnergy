
#> simplenergy:custom_blocks/electric_brewing_stand/work
#
# @executed	as @e[tag=simplenergy.tick] & at @s
#
# @within	simplenergy:custom_blocks/electric_brewing_stand/tick
#

# Change BrewTime value and use energy
execute if score #cook_time simplenergy.data matches 1.. run scoreboard players set #20 simplenergy.data 20
execute if score #cook_time simplenergy.data matches 1.. run scoreboard players operation #energy_rate simplenergy.data = @s simplenergy.energy_rate
execute if score #cook_time simplenergy.data matches 1.. run scoreboard players operation #energy_rate simplenergy.data /= #20 simplenergy.data
execute if score #cook_time simplenergy.data matches 1.. run scoreboard players operation @s energy.storage -= #energy_rate simplenergy.data
execute if score #cook_time simplenergy.data matches 4.. run scoreboard players remove #cook_time simplenergy.data 3
execute if score #cook_time simplenergy.data matches 1.. store result block ~ ~ ~ BrewTime short 1 run scoreboard players get #cook_time simplenergy.data

# Change Fuel value
scoreboard players operation #old_burn_time simplenergy.data = #burn_time simplenergy.data
scoreboard players add #burn_time simplenergy.data 21
execute if score #burn_time simplenergy.data matches 21.. run scoreboard players set #burn_time simplenergy.data 20
execute if score #old_burn_time simplenergy.data matches ..200 store result block ~ ~ ~ Fuel byte 1 run scoreboard players get #burn_time simplenergy.data

