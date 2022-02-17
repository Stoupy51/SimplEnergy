
execute positioned ~ ~1 ~ if entity @e[type=#energy:valid_block_entities,dx=0,dy=0,dz=0,tag=energy.receive,tag=!energy.send] run tag @s add energy.consumer_connected
execute positioned ~ ~-1 ~ if entity @e[type=#energy:valid_block_entities,dx=0,dy=0,dz=0,tag=energy.receive,tag=!energy.send] run tag @s add energy.consumer_connected
execute positioned ~ ~ ~-1 if entity @e[type=#energy:valid_block_entities,dx=0,dy=0,dz=0,tag=energy.receive,tag=!energy.send] run tag @s add energy.consumer_connected
execute positioned ~ ~ ~1 if entity @e[type=#energy:valid_block_entities,dx=0,dy=0,dz=0,tag=energy.receive,tag=!energy.send] run tag @s add energy.consumer_connected
execute positioned ~1 ~ ~ if entity @e[type=#energy:valid_block_entities,dx=0,dy=0,dz=0,tag=energy.receive,tag=!energy.send] run tag @s add energy.consumer_connected
execute positioned ~-1 ~ ~ if entity @e[type=#energy:valid_block_entities,dx=0,dy=0,dz=0,tag=energy.receive,tag=!energy.send] run tag @s add energy.consumer_connected
