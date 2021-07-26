summon item ~ ~ ~ {Item:{id:"minecraft:cobblestone",Count:1b,tag:{SE_CustomTextureItem:1b}},Tags:["SE_Drop"]}
data modify entity @e[type=item,limit=1,distance=..1,sort=nearest] Item set from storage simplenergy:items Drop
kill @e[type=item,nbt={Item:{tag:{SE_CustomTextureItem:1b}}},limit=1,distance=..1,sort=nearest]
data remove storage simplenergy:items Drop
