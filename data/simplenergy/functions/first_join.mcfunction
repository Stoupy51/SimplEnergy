summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:cobblestone",Count:64b,tag:{SimplEnergy_Give:1b}},PickupDelay:2s,Tags:["SimplEnergy_Give"]}
data modify entity @e[type=item,tag=SimplEnergy_Give,limit=1] Owner set from entity @s UUID
data modify entity @e[type=item,tag=SimplEnergy_Give,limit=1] Item set from storage simplenergy:items all.2012895
data modify entity @e[type=item,tag=SimplEnergy_Give,limit=1] Item.tag.display set value {Lore:['{"translate":"Drop a Simplunium Ingot on","italic":false,"color":"gray"}','{"translate":"a crafting table to get a","italic":false,"color":"gray"}','{"translate":"Simple Crafting Table","italic":false,"color":"gray"}']}
tag @e[type=item,tag=SimplEnergy_Give] remove SimplEnergy_Give
tag @s add SimplEnergy_FirstJoin
