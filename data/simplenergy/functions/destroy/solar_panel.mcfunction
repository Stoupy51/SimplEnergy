data merge entity @e[type=item,nbt={Item:{id:"minecraft:daylight_detector"}},limit=1,sort=nearest,distance=..1] {Item:{id:"minecraft:barrel",Count:1b,tag:{CustomModelData:2012003,BlockEntityTag:{Lock:"SE_Placed"},SE_SolarPanel:1b,HideFlags:127,display:{Lore:['[{"text":"[Generate : 4 Watt]","color":"gray","italic":false}]','[{"text":"[Energy Buffer : 600 Joules]","color":"gray","italic":false}]'],Name:'[{"text":"Solar Panel","color":"white","italic":false}]'}}}}
kill @s
execute as @e[type=minecraft:glow_item_frame,tag=EF_Wire,distance=..2] at @s run function simplenergy:visual/wire_update
