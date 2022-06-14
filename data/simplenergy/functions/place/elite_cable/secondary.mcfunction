
function simplenergy:place/block_tags
item replace entity @s container.0 with cobblestone{CustomModelData:2012700}
tag @s add simplenergy.cable
tag @s add simplenergy.elite_cable
tag @s add simplenergy.destroy_player_head
tag @s add energy.cable

scoreboard players set @s energy.transfer_rate 180
#Call on a new cable to initialize its connections
function energy:v1/api/init_cable
