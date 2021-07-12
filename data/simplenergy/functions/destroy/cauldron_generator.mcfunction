kill @e[type=item,nbt={Item:{id:"minecraft:cauldron"}},limit=1,sort=nearest,distance=..1]
summon item ~ ~ ~ {Motion:[0.00,0.3,0.00],Item:{id:"minecraft:barrel",Count:1b,tag:{CustomModelData:2012000,BlockEntityTag:{Lock:"SE_Placed"},SE_CauldronGenerator:1b,HideFlags:127,display:{Lore:['[{"text":"[Generate : 2 Watt]","color":"gray","italic":false}]','[{"text":"[Energy Buffer : 500 Joules]","color":"gray","italic":false}]'],Name:'[{"text":"Cauldron Generator","color":"white","italic":false}]'}}}}
kill @s
execute as @e[type=minecraft:glow_item_frame,tag=EF_Wire,distance=..2] at @s run function simplenergy:work/wire_update
