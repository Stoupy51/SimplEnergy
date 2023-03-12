
function simplenergy:place/block_tags
item replace entity @s container.0 with cobblestone{CustomModelData:2012600}
tag @s add simplenergy.cable
tag @s add simplenergy.advanced_cable
tag @s add simplenergy.destroy_player_head
tag @s add energy.cable

# Item display brightness, translation, and rotation
data remove entity @s brightness
data modify entity @s transformation.translation[1] set value -0.24f
data modify entity @s Rotation set value [180.0f, 180.0f]

# Call on a new cable to initialize its connections
scoreboard players set @s energy.transfer_rate 60
function energy:v1/api/init_cable

