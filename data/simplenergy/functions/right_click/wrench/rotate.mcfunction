
# Copy block data
data modify storage simplenergy:main Block set from block ~ ~ ~

# Rotate custom block
execute store result score #rotation simplenergy.data run data get entity @s ItemRotation
scoreboard players add #rotation simplenergy.data 6
scoreboard players operation #rotation simplenergy.data %= #8 simplenergy.data
execute store result entity @s ItemRotation byte 1 run scoreboard players get #rotation simplenergy.data

# Rotate base block
function #simplenergy:wrench_rotate

# Memory clean up and particle effect
data remove storage simplenergy:main Block
particle falling_dust furnace ~ ~ ~ .5 .5 .5 0.1 10

