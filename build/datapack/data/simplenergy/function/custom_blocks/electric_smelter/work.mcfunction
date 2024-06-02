
#> simplenergy:custom_blocks/electric_smelter/work
#
# @within	simplenergy:custom_blocks/electric_smelter/tick
#

# Change CookTime value and use energy
execute if score #cook_time simplenergy.data matches 1.. run scoreboard players remove @s energy.storage 5
execute if score #cook_time simplenergy.data matches 1.. run scoreboard players add #cook_time simplenergy.data 7
execute if score #cook_time simplenergy.data matches 200.. run scoreboard players set #cook_time simplenergy.data 199
execute if score #cook_time simplenergy.data matches 1.. store result block ~ ~ ~ CookTime short 1 run scoreboard players get #cook_time simplenergy.data

# Change BurnTime value
scoreboard players operation #old_burn_time simplenergy.data = #burn_time simplenergy.data
scoreboard players add #burn_time simplenergy.data 21
execute if score #burn_time simplenergy.data matches 21.. run scoreboard players set #burn_time simplenergy.data 20
execute if score #old_burn_time simplenergy.data matches ..200 store result block ~ ~ ~ BurnTime short 1 run scoreboard players get #burn_time simplenergy.data

