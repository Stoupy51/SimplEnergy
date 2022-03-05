scoreboard players set $temp1 smd.data 0

execute unless data entity @s {HandItems:[{tag:{Damage:0}}]} store result score $temp1 smd.data run data get entity @s HandItems[0].tag.Damage
execute unless data entity @s {HandItems:[{tag:{Damage:0}}]} store success score $temp smd.data store result entity @s HandItems[0].tag.Damage int 1 run scoreboard players add $temp1 smd.data 1
execute if data entity @s {HandItems:[{tag:{Damage:0}}]} store success score $temp smd.data run data modify entity @s HandItems[0].tag.Damage set value 1

function smithed:crafter/impl/v0_0_1/block/table/crafting/output/clear_input/delete_tool

