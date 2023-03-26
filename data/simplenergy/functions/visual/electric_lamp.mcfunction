
# Update light depends on energy storage
execute if score @s energy.storage matches ..0 run setblock ~ ~ ~ redstone_lamp
execute if score @s energy.storage matches ..0 run data modify entity @s Item.tag.CustomModelData set value 2012405
execute if score @s energy.storage matches 1.. run setblock ~ ~ ~ glowstone
execute if score @s energy.storage matches 1.. run data modify entity @s Item.tag.CustomModelData set value 2012406
execute if score @s energy.storage matches 1.. run scoreboard players remove @s energy.storage 1

