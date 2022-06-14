
scoreboard players set #raycast simplenergy.data 1
scoreboard players set #success simplenergy.data 0
execute store result score #success simplenergy.data as @e[tag=simplenergy.rotable,limit=1,sort=nearest,dx=0,dy=0,dz=0] at @s run function simplenergy:right_click/wrench/rotate
execute if score #success simplenergy.data matches 0 store result score #success simplenergy.data at @e[tag=simplenergy.cable,limit=1,sort=nearest,dx=0,dy=0,dz=0] run setblock ~ ~ ~ air destroy
execute if score #success simplenergy.data matches 1 run playsound block.stone.break block @s
