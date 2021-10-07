execute as @a[tag=SE_Placer,y_rotation=-46..45] run setblock ~ ~ ~ furnace[facing=north]{CustomName:'{"text":"Electric Smelter"}',Items:[{Slot:1b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:2011942,SE_CustomTextureItem:1s,display:{Name:'[{"text":""}]'}}}]}
execute as @a[tag=SE_Placer,y_rotation=46..135] run setblock ~ ~ ~ furnace[facing=east]{CustomName:'{"text":"Electric Smelter"}',Items:[{Slot:1b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:2011942,SE_CustomTextureItem:1s,display:{Name:'[{"text":""}]'}}}]}
execute as @a[tag=SE_Placer,y_rotation=136..225] run setblock ~ ~ ~ furnace[facing=south]{CustomName:'{"text":"Electric Smelter"}',Items:[{Slot:1b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:2011942,SE_CustomTextureItem:1s,display:{Name:'[{"text":""}]'}}}]}
execute as @a[tag=SE_Placer,y_rotation=226..315] run setblock ~ ~ ~ furnace[facing=west]{CustomName:'{"text":"Electric Smelter"}',Items:[{Slot:1b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:2011942,SE_CustomTextureItem:1s,display:{Name:'[{"text":""}]'}}}]}
execute as @a[tag=SE_Placer,y_rotation=-46..45] run summon glow_item_frame ~ ~ ~ {ItemRotation:4b,Tags:["SE_Destroyer","SE_ElectricSmelter","EF_Use","EF_CanReceive","SE_SetNew"],Invisible:1b,Invulnerable:1b,Fixed:1b,Silent:1b,Facing:1b,Item:{id:"cobblestone",Count:1b,tag:{CustomModelData:2012202}}}
execute as @a[tag=SE_Placer,y_rotation=46..135] run summon glow_item_frame ~ ~ ~ {ItemRotation:6b,Tags:["SE_Destroyer","SE_ElectricSmelter","EF_Use","EF_CanReceive","SE_SetNew"],Invisible:1b,Invulnerable:1b,Fixed:1b,Silent:1b,Facing:1b,Item:{id:"cobblestone",Count:1b,tag:{CustomModelData:2012202}}}
execute as @a[tag=SE_Placer,y_rotation=136..225] run summon glow_item_frame ~ ~ ~ {ItemRotation:0b,Tags:["SE_Destroyer","SE_ElectricSmelter","EF_Use","EF_CanReceive","SE_SetNew"],Invisible:1b,Invulnerable:1b,Fixed:1b,Silent:1b,Facing:1b,Item:{id:"cobblestone",Count:1b,tag:{CustomModelData:2012202}}}
execute as @a[tag=SE_Placer,y_rotation=226..315] run summon glow_item_frame ~ ~ ~ {ItemRotation:2b,Tags:["SE_Destroyer","SE_ElectricSmelter","EF_Use","EF_CanReceive","SE_SetNew"],Invisible:1b,Invulnerable:1b,Fixed:1b,Silent:1b,Facing:1b,Item:{id:"cobblestone",Count:1b,tag:{CustomModelData:2012202}}}
execute as @e[type=#energy_flux:entities,tag=EF_Wire,distance=..2] at @s run function energy_flux:wire_update
kill @s
