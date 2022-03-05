execute store result score $maximumHealth smd.damage run attribute @s generic.max_health get
execute store result score $currentHealth smd.damage run data get entity @s Health
scoreboard players operation @s smd.damage += $maximumHealth smd.damage
scoreboard players operation @s smd.damage -= $currentHealth smd.damage
