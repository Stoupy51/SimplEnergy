
function simplenergy:place/block_tags
item replace entity @s container.0 with deepslate{CustomModelData:2012202}
tag @s add simplenergy.balancing
tag @s add simplenergy.elite_battery
tag @s add simplenergy.destroy_iron_block
tag @s add energy.receive
tag @s add energy.send

# Get energy storage from the item in the placer's hand
execute store result score @s energy.max_storage run data get entity @a[tag=simplenergy.placer,limit=1] SelectedItem.tag.energy.max_storage
scoreboard players operation @s energy.transfer_rate = @s energy.max_storage
execute store result score @s energy.storage run data get entity @a[tag=simplenergy.placer,limit=1] SelectedItem.tag.energy.storage
execute if score @s energy.max_storage matches 2147483647 run data modify entity @s Item.tag.Enchantments set value [{id:"minecraft:protection",lvl:0}]

# Call on a new machine to initialize its connections
function energy:v1/api/init_machine

