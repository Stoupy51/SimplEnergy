
function simplenergy:place/block_tags
item replace entity @s container.0 with deepslate{CustomModelData:2012402}
tag @s add simplenergy.rotable
tag @s add simplenergy.tick_entities
tag @s add simplenergy.electric_smelter
tag @s add simplenergy.destroy_furnace
tag @s add energy.receive

scoreboard players set @s energy.max_storage 6400
scoreboard players operation @s energy.transfer_rate = @s energy.max_storage
scoreboard players add @s energy.storage 0
scoreboard players add @s energy.change_rate 0

# Call on a new machine to initialize its connections
function energy:v1/api/init_machine

