
execute if entity @s[y_rotation=-46..45] run setblock ~ ~ ~ furnace[facing=north]
execute if entity @s[y_rotation=45..135] run setblock ~ ~ ~ furnace[facing=east]
execute if entity @s[y_rotation=135..225] run setblock ~ ~ ~ furnace[facing=south]
execute if entity @s[y_rotation=225..315] run setblock ~ ~ ~ furnace[facing=west]
execute if entity @s[y_rotation=-46..45] run summon glow_item_frame ~ ~ ~ {ItemRotation:4b,Tags:["global.ignore","global.ignore.kill","smithed.block","simplenergy.destroyer","simplenergy.furnace_generator","energy.send","simplenergy.new"],Invisible:1b,Invulnerable:1b,Fixed:1b,Silent:1b,Facing:1b,Item:{id:"cobblestone",Count:1b,tag:{CustomModelData:2012001}}}
execute if entity @s[y_rotation=45..135] run summon glow_item_frame ~ ~ ~ {ItemRotation:6b,Tags:["global.ignore","global.ignore.kill","smithed.block","simplenergy.destroyer","simplenergy.furnace_generator","energy.send","simplenergy.new"],Invisible:1b,Invulnerable:1b,Fixed:1b,Silent:1b,Facing:1b,Item:{id:"cobblestone",Count:1b,tag:{CustomModelData:2012001}}}
execute if entity @s[y_rotation=135..225] run summon glow_item_frame ~ ~ ~ {ItemRotation:0b,Tags:["global.ignore","global.ignore.kill","smithed.block","simplenergy.destroyer","simplenergy.furnace_generator","energy.send","simplenergy.new"],Invisible:1b,Invulnerable:1b,Fixed:1b,Silent:1b,Facing:1b,Item:{id:"cobblestone",Count:1b,tag:{CustomModelData:2012001}}}
execute if entity @s[y_rotation=225..315] run summon glow_item_frame ~ ~ ~ {ItemRotation:2b,Tags:["global.ignore","global.ignore.kill","smithed.block","simplenergy.destroyer","simplenergy.furnace_generator","energy.send","simplenergy.new"],Invisible:1b,Invulnerable:1b,Fixed:1b,Silent:1b,Facing:1b,Item:{id:"cobblestone",Count:1b,tag:{CustomModelData:2012001}}}
execute as @e[type=glow_item_frame,tag=simplenergy.new,limit=1] at @s run function simplenergy:place/furnace_generator/secondary
