
# Try to rotation block from simplenergy or mechanization or break cable
scoreboard players set #raycast simplenergy.data 1
scoreboard players set #success simplenergy.data 0
execute store result score #success simplenergy.data as @e[tag=simplenergy.rotable,limit=1,sort=nearest,dx=0,dy=0,dz=0] at @s run function simplenergy:right_click/wrench/rotate
execute if score #success simplenergy.data matches 0 store result score #success simplenergy.data as @e[tag=mechanization.rotatable,limit=1,sort=nearest,dx=0,dy=0,dz=0] at @s run function mechanization:base/player/wrench/rotate_machine
execute if score #success simplenergy.data matches 0 store result score #success simplenergy.data as @e[tag=mechanization.cable,limit=1,sort=nearest,dx=0,dy=0,dz=0] at @s run function #mechanization:wrench_break
execute if score #success simplenergy.data matches 0 store result score #success simplenergy.data at @e[tag=simplenergy.cable,limit=1,sort=nearest,dx=0,dy=0,dz=0] run setblock ~ ~ ~ air destroy

# Playsound if block was rotated or cable was broken
execute if score #success simplenergy.data matches 1 run playsound block.stone.break block @s

