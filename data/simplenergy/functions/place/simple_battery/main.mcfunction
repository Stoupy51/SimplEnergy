
setblock ~ ~ ~ cobbled_deepslate
summon glow_item_frame ~ ~ ~ {ItemRotation:0b,Tags:["global.ignore","global.ignore.kill","smithed.block","SimplEnergy_Destroyer","SimplEnergy_SimpleBattery","SimplEnergy_Balancing","energy.receive","energy.send","SimplEnergy_SetNew"],Invisible:1b,Invulnerable:1b,Fixed:1b,Silent:1b,Facing:1b,Item:{id:"cobblestone",Count:1b,tag:{CustomModelData:2012100}}}
execute as @e[type=item_frame,tag=SimplEnergy_SetNew,limit=1] at @s run function simplenergy:place/simple_battery/secondary
