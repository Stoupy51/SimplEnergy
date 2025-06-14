
#> simplenergy:utils/wrench/rotate
#
# @within	simplenergy:calls/mechanization/wrench_modify
#			simplenergy:utils/wrench/stop_case
#

# Copy block data
scoreboard players set #success simplenergy.data 1
data modify storage simplenergy:main Block set from block ~ ~ ~

# Rotate custom block
execute store result score #rotation simplenergy.data run data get entity @s Rotation[0]
scoreboard players add #rotation simplenergy.data 90
scoreboard players set #360 simplenergy.data 360
scoreboard players operation #rotation simplenergy.data %= #360 simplenergy.data
execute store result entity @s Rotation[0] float 1 run scoreboard players get #rotation simplenergy.data

# Rotate base block
function #simplenergy:calls/wrench_rotate

# Memory clean up and particle effect
data remove storage simplenergy:main Block
particle block{block_state:"minecraft:furnace"} ~ ~ ~ 0.5 0.5 0.5 0.1 10

