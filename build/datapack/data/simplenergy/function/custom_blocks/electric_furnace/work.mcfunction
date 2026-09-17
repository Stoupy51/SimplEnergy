
#> simplenergy:custom_blocks/electric_furnace/work
#
# @executed	as @e[tag=simplenergy.tick] & at @s
#
# @within	simplenergy:custom_blocks/electric_furnace/tick
#

# Change cooking_time_spent value and use energy
execute if score #cook_time simplenergy.data matches 1.. run scoreboard players set #20 simplenergy.data 20
execute if score #cook_time simplenergy.data matches 1.. run scoreboard players operation #energy_rate simplenergy.data = @s simplenergy.energy_rate
execute if score #cook_time simplenergy.data matches 1.. run scoreboard players operation #energy_rate simplenergy.data /= #20 simplenergy.data
execute if score #cook_time simplenergy.data matches 1.. run scoreboard players operation @s energy.storage -= #energy_rate simplenergy.data

# Change lit_time_remaining value
scoreboard players operation #old_burn_time simplenergy.data = #burn_time simplenergy.data
scoreboard players add #burn_time simplenergy.data 21
execute if score #burn_time simplenergy.data matches 21.. run scoreboard players set #burn_time simplenergy.data 20
execute if score #old_burn_time simplenergy.data matches ..200 store result block ~ ~ ~ lit_time_remaining int 1 run scoreboard players get #burn_time simplenergy.data

