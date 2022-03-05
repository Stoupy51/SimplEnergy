############################################################
# Description: Spawns the extra items needed from creating an extra
# Creator: CreeperMagnet_
############################################################

summon item ~ ~ ~ {Tags:["smd.extra_item"],Item:{id:"minecraft:stone",Count:1b}}
data modify entity @e[tag=smd.extra_item,type=item,limit=1,sort=nearest] Item set from storage smd:crafter root.temp.item
tag @e[tag=smd.extra_item,type=item,limit=1,sort=nearest] remove smd.extra_item
scoreboard players remove $temp2 smd.data 1
execute if score $temp2 smd.data matches 1.. run function smithed:crafter/impl/v0_0_1/block/table/crafting/output/shift_click/spawn_extra_items
