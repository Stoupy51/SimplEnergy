#Update light depends on Energy
    execute if score @s EF_Joule matches ..0 run setblock ~ ~ ~ minecraft:redstone_lamp
    execute if score @s EF_Joule matches ..0 run data modify entity @s Item set value {id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:2012205}}
    execute if score @s EF_Joule matches 1.. run setblock ~ ~ ~ minecraft:glowstone
    execute if score @s EF_Joule matches 1.. run data modify entity @s Item set value {id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:2012206}}
