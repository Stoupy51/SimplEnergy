
data modify storage simplenergy:main Furnace set from block ~ ~ ~

execute store result score #rotation simplenergy.data run data get entity @s ItemRotation
scoreboard players add #rotation simplenergy.data 6
scoreboard players operation #rotation simplenergy.data %= #8 simplenergy.data
execute store result entity @s ItemRotation byte 1 run scoreboard players get #rotation simplenergy.data

execute if score #rotation simplenergy.data matches 0 run setblock ~ ~ ~ furnace[facing=south] replace
execute if score #rotation simplenergy.data matches 2 run setblock ~ ~ ~ furnace[facing=west] replace
execute if score #rotation simplenergy.data matches 4 run setblock ~ ~ ~ furnace[facing=north] replace
execute if score #rotation simplenergy.data matches 6 run setblock ~ ~ ~ furnace[facing=east] replace
data modify block ~ ~ ~ {} merge from storage simplenergy:main Furnace
data remove storage simplenergy:main Furnace

particle falling_dust furnace ~ ~ ~ .5 .5 .5 0.1 10

#tellraw @a [{"score":{"objective":"simplenergy.data","name":"#rotation"}}]

