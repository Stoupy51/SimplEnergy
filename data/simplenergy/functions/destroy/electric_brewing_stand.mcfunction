kill @e[type=item,nbt={Item:{id:"minecraft:brewing_stand"}},limit=1,sort=nearest,distance=..1]
kill @e[type=item,nbt={Item:{id:"minecraft:cobblestone",tag:{SE_CustomTextureItem:1b}}},limit=1,sort=nearest,distance=..1]
summon item ~ ~ ~ {Motion:[0.00,0.3,0.00],Item:{id:"minecraft:barrel",Count:1b,tag:{CustomModelData:2012304,BlockEntityTag:{Lock:"SE_Placed"},SE_ElectricBrewing:1b,HideFlags:127,display:{Lore:['[{"text":"[Power Usage : 20 Watt]","color":"gray","italic":false}]','[{"text":"[Energy Buffer : 1200 Joules]","color":"gray","italic":false}]'],Name:'[{"text":"Electric Brewing Stand","color":"white","italic":false}]'}}}}
kill @s
execute as @e[type=minecraft:glow_item_frame,tag=EF_Wire,distance=..2] at @s run function simplenergy:work/wire_update
