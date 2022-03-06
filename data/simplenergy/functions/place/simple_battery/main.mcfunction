
setblock ~ ~ ~ cobbled_deepslate
summon glow_item_frame ~ ~ ~ {ItemRotation:0b,Tags:["global.ignore","global.ignore.kill","smithed.block","simplenergy.destroyer","simplenergy.simple_battery","simplenergy.balancing","energy.receive","energy.send","simplenergy.new"],Invisible:1b,Invulnerable:1b,Fixed:1b,Silent:1b,Facing:1b,Item:{id:"cobblestone",Count:1b,tag:{CustomModelData:2012100}}}
execute as @e[type=item_frame,tag=simplenergy.new,limit=1] at @s run function simplenergy:place/simple_battery/secondary
