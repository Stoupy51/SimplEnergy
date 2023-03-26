
# Store CookTime & BurnTime into a score to change the value
data modify storage simplenergy:temp all set from block ~ ~ ~
execute store result score #cook_time simplenergy.data run data get storage simplenergy:temp all.CookTime
execute store result score #burn_time simplenergy.data run data get storage simplenergy:temp all.BurnTime

# Change CookTime value and use Energy & playsound on work
execute if score #cook_time simplenergy.data matches 1.. run scoreboard players remove @s energy.storage 10
execute if score #cook_time simplenergy.data matches 1.. run scoreboard players add #cook_time simplenergy.data 15
execute if score #cook_time simplenergy.data matches 1.. run playsound simplenergy:electric_furnace block @a[distance=2..12,tag=!simplenergy.ps.electric_furnace] ~ ~ ~ 0.04
execute if score #cook_time simplenergy.data matches 1.. run playsound simplenergy:electric_furnace block @a[distance=..2,tag=!simplenergy.ps.electric_furnace] ~ ~ ~ 0.20
execute if score #cook_time simplenergy.data matches 1.. run tag @a[distance=..12] add simplenergy.ps.electric_furnace
execute if score #cook_time simplenergy.data matches 200.. run scoreboard players set #cook_time simplenergy.data 199
execute if score #cook_time simplenergy.data matches 1.. store result block ~ ~ ~ CookTime short 1 run scoreboard players get #cook_time simplenergy.data

# Change BurnTime value and use Energy
scoreboard players operation #old_burn_time simplenergy.data = #burn_time simplenergy.data
scoreboard players add #burn_time simplenergy.data 21
execute if score #burn_time simplenergy.data matches 221.. run scoreboard players set #burn_time simplenergy.data 220
execute if score #old_burn_time simplenergy.data matches ..200 store result block ~ ~ ~ BurnTime short 1 run scoreboard players get #burn_time simplenergy.data

# Change gui texture
execute unless data storage simplenergy:temp all.Items[{Slot:1b}] run item replace block ~ ~ ~ container.1 with cobblestone{CustomModelData:2011998,simplenergy:{texture_item:1b},display:{Name:'""'}}

