
function simplenergy:place/block_tags
item replace entity @s container.0 with deepslate{CustomModelData:2012200}
tag @s add simplenergy.balancing
tag @s add simplenergy.simple_battery
tag @s add simplenergy.destroy_cobbled_deepslate
tag @s add energy.receive
tag @s add energy.send

# Get energy storage from the item in the placer's hand
execute store result score @s energy.max_storage run data get entity @a[tag=simplenergy.placer,limit=1] SelectedItem.tag.energy.max_storage
scoreboard players operation @s energy.transfer_rate = @s energy.max_storage
execute store result score @s energy.storage run data get entity @a[tag=simplenergy.placer,limit=1] SelectedItem.tag.energy.storage

# Call on a new machine to initialize its connections
function energy:v1/api/init_machine

