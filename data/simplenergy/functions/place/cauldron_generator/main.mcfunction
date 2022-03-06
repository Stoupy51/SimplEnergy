
setblock ~ ~ ~ cauldron
summon glow_item_frame ~ ~ ~ {ItemRotation:0b,Tags:["global.ignore","global.ignore.kill","smithed.block","simplenergy.destroyer","simplenergy.cauldron_generator","simplenergy.balancing","energy.send","simplenergy.new"],Invisible:1b,Invulnerable:1b,Fixed:1b,Silent:1b,Facing:1b}
execute as @e[type=glow_item_frame,tag=simplenergy.new,limit=1] at @s run function simplenergy:place/cauldron_generator/secondary
