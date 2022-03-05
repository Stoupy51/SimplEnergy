
setblock ~ ~ ~ minecraft:air
setblock ~ ~ ~ minecraft:player_head{SkullOwner:{Id:[I;-1416541,25415515,-3515615,-4156415],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjlmMzJjOWNkNTU2MzJmNjEzZjRhMDU2ZGEyYzJhYTkzZjMwOTk2ZGY2NzMxZTcyYmM1NDA4NzA4ZGE5MWYzOCJ9fX0="}]}},id:"minecraft:skull"}
summon item_frame ~ ~ ~ {ItemRotation:0b,Tags:["global.ignore","global.ignore.kill","smithed.block","SimplEnergy_Destroyer","SimplEnergy_EliteCable","SimplEnergy_Cable","SimplEnergy_SetNew","energy.cable"],Invisible:1b,Invulnerable:1b,Fixed:1b,Silent:1b,Facing:1b,Item:{id:"cobblestone",Count:1b,tag:{CustomModelData:2012500}}}
execute as @e[type=item_frame,tag=SimplEnergy_SetNew,limit=1] at @s run function simplenergy:place/elite_cable/secondary
kill @s
