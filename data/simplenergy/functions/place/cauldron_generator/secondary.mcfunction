
function simplenergy:place/block_tags
#item replace entity @s container.0 with deepslate{CustomModelData:2012xxx}
tag @s add simplenergy.balancing
tag @s add simplenergy.cauldron_generator
tag @s add simplenergy.destroy_cauldron
tag @s add energy.send

scoreboard players set @s energy.max_storage 500
scoreboard players operation @s energy.transfer_rate = @s energy.max_storage
scoreboard players add @s energy.storage 0
scoreboard players add @s energy.change_rate 0

# Item display brightness
data remove entity @s brightness

# Call on a new machine to initialize its connections
function energy:v1/api/init_machine

