summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:cobblestone",Count:64b,tag:{SE_Give:1b}},PickupDelay:1b,Tags:["SE_Give"]}
data modify entity @e[type=item,tag=SE_Give,limit=1] Owner set from entity @s UUID
data modify entity @e[type=item,tag=SE_Give,limit=1] Item set from storage simplenergy:items 2012895
data modify entity @e[type=item,tag=SE_Give,limit=1] Item.tag.display set value {Lore:['{"translate":"Drop a Simplunium Ingot on","italic":false,"color":"gray"}','{"translate":"a crafting table to get a","italic":false,"color":"gray"}','{"translate":"Simple Crafting Table","italic":false,"color":"gray"}']}
tag @e[type=item,tag=SE_Give] remove SE_Give
tag @s add SE_FirstJoin
