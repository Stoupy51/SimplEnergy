summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:cobblestone",Count:64b,tag:{SF_Give:1b}}}
data modify entity @e[type=item,nbt={Item:{tag:{SF_Give:1b}}},limit=1] Item set from storage simplenergy:items 2012896
tag @s add SE_FirstJoin
