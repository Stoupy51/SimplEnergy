
function simplenergy:place/block_tags
data modify entity @s Item set value {id:"cobblestone",Count:1b,tag:{CustomModelData:2012500}}
tag @s add simplenergy.cable
tag @s add simplenergy.simple_cable
tag @s add simplenergy.destroy_player_head
tag @s add energy.cable

scoreboard players set @s energy.transfer_rate 20
#Call on a new cable to initialize its connections
function energy:v1/api/init_cable
