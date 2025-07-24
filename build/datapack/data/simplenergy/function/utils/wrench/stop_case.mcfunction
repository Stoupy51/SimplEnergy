
#> simplenergy:utils/wrench/stop_case
#
# @executed	align xyz
#
# @within	simplenergy:utils/wrench/raycast [ align xyz ]
#

# Try to rotation block from simplenergy or mechanization or break cable
scoreboard players set #raycast simplenergy.data 1
scoreboard players set #success simplenergy.data 0

execute as @n[tag=simplenergy.rotatable,dx=0,dy=0,dz=0] at @s run function simplenergy:utils/wrench/rotate
execute if score #success simplenergy.data matches 0 store result score #success simplenergy.data as @n[tag=mechanization.rotatable,dx=0,dy=0,dz=0] at @s run function mechanization:base/player/wrench/rotate_machine
execute if score #success simplenergy.data matches 0 store result score #success simplenergy.data as @n[tag=mechanization.cable,dx=0,dy=0,dz=0] at @s run function #mechanization:wrench_break
execute if score #success simplenergy.data matches 0 store result score #success simplenergy.data at @n[tag=simplenergy.cable,dx=0,dy=0,dz=0] run setblock ~ ~ ~ air destroy

# Playsound if block was rotated or cable was broken
execute if score #success simplenergy.data matches 1 run playsound block.stone.break block @s

