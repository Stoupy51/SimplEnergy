
scoreboard players set #success simplenergy.data 0
execute store result score #success simplenergy.data as @e[type=glow_item_frame,tag=simplenergy.destroyer,limit=1,sort=nearest,distance=..1.5] at @s if block ~ ~ ~ furnace run function simplenergy:right_click/wrench/rotate
execute if score #success simplenergy.data matches 0 store result score #success simplenergy.data at @e[type=item_frame,tag=simplenergy.cable,limit=1,sort=nearest,distance=..1.5] run setblock ~ ~ ~ air destroy
execute if score #success simplenergy.data matches 1 run playsound block.stone.break block @s

