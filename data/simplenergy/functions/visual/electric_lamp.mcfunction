execute if score @s EF_Joule matches ..0 run setblock ~ ~ ~ minecraft:redstone_lamp
execute if score @s EF_Joule matches ..0 run item replace entity @s armor.head with cobblestone{CustomModelData:2012305}
execute if score @s EF_Joule matches 1.. run setblock ~ ~ ~ minecraft:glowstone
execute if score @s EF_Joule matches 1.. run item replace entity @s armor.head with cobblestone{CustomModelData:2012306}
