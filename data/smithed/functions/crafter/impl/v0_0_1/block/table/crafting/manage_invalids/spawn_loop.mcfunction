####################
# Spawns invalid items in item form
####################

scoreboard players remove @s smd.data 1
execute as @p[tag=smd.inside_crafter,gamemode=!spectator] at @s run summon item ~ ~ ~ {Item:{id:"stone",Count:1b},Tags:["smd.replace_item","global.ignore"]}
data modify entity @e[type=item,limit=1,tag=smd.replace_item] Item set from storage smd:crafter root.temp.export_items[0]
data remove storage smd:crafter root.temp.export_items[0]
tag @e[type=item,limit=1,tag=smd.replace_item] remove smd.replace_item
execute if entity @s[scores={smd.data=1..}] run function smithed:crafter/impl/v0_0_1/block/table/crafting/manage_invalids/spawn_loop
