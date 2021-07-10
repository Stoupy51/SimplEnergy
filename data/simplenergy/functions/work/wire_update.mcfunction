item replace entity @s weapon.mainhand with minecraft:air
item replace entity @s weapon.offhand with minecraft:air
item replace entity @s armor.head with minecraft:air

execute positioned ~ ~ ~1 if entity @e[tag=EF_Use,limit=1,sort=nearest,distance=..0.2] run item replace entity @s armor.head with cobblestone{CustomModelData:2012100}
execute positioned ~1 ~ ~ if entity @e[tag=EF_Use,limit=1,sort=nearest,distance=..0.2] run item replace entity @s weapon.mainhand with cobblestone{CustomModelData:2012100}
execute positioned ~ ~1 ~ if entity @e[tag=EF_Use,limit=1,sort=nearest,distance=..0.2] run item replace entity @s weapon.offhand with cobblestone{CustomModelData:2012100}

execute positioned ~ ~ ~-1 if entity @e[tag=EF_Use,tag=!EF_Wire,limit=1,sort=nearest,distance=..0.2] at @s positioned ~ ~ ~1 unless entity @e[tag=EF_Use,limit=1,sort=nearest,distance=..0.2] run item replace entity @s armor.head with cobblestone{CustomModelData:2012101}
execute positioned ~-1 ~ ~ if entity @e[tag=EF_Use,tag=!EF_Wire,limit=1,sort=nearest,distance=..0.2] at @s positioned ~1 ~ ~ unless entity @e[tag=EF_Use,limit=1,sort=nearest,distance=..0.2] run item replace entity @s weapon.mainhand with cobblestone{CustomModelData:2012101}
execute positioned ~ ~-1 ~ if entity @e[tag=EF_Use,tag=!EF_Wire,limit=1,sort=nearest,distance=..0.2] at @s positioned ~ ~1 ~ unless entity @e[tag=EF_Use,limit=1,sort=nearest,distance=..0.2] run item replace entity @s weapon.offhand with cobblestone{CustomModelData:2012101}

execute positioned ~ ~ ~-1 if entity @e[tag=EF_Use,limit=1,sort=nearest,distance=..0.2] at @s positioned ~ ~ ~1 if entity @e[tag=EF_Use,limit=1,sort=nearest,distance=..0.2] run item replace entity @s armor.head with cobblestone{CustomModelData:2012102}
execute positioned ~-1 ~ ~ if entity @e[tag=EF_Use,limit=1,sort=nearest,distance=..0.2] at @s positioned ~1 ~ ~ if entity @e[tag=EF_Use,limit=1,sort=nearest,distance=..0.2] run item replace entity @s weapon.mainhand with cobblestone{CustomModelData:2012102}
execute positioned ~ ~-1 ~ if entity @e[tag=EF_Use,limit=1,sort=nearest,distance=..0.2] at @s positioned ~ ~1 ~ if entity @e[tag=EF_Use,limit=1,sort=nearest,distance=..0.2] run item replace entity @s weapon.offhand with cobblestone{CustomModelData:2012102}
