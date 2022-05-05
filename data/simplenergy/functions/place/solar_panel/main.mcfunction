
setblock ~ ~ ~ minecraft:daylight_detector
summon glow_item_frame ~ ~ ~ {ItemRotation:0b,Tags:["global.ignore","global.ignore.kill","smithed.block","simplenergy.destroyer","simplenergy.solar_panel","simplenergy.balancing","energy.send","simplenergy.new"],Invisible:1b,Invulnerable:1b,Fixed:1b,Silent:1b,Facing:1b,Item:{id:"deepslate",Count:1b,tag:{CustomModelData:2012303}}}
execute as @e[type=glow_item_frame,tag=simplenergy.new,limit=1] at @s run function simplenergy:place/solar_panel/secondary
