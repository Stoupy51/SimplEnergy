
execute store result score @s energy.max_storage run data get entity @a[tag=simplenergy.placer,limit=1] SelectedItem.tag.energy.max_storage
scoreboard players operation @s energy.transfer_rate = @s energy.max_storage
execute store result score @s energy.storage run data get entity @a[tag=simplenergy.placer,limit=1] SelectedItem.tag.energy.storage
tag @s remove simplenergy.new
execute if score @s energy.max_storage matches 2147483647 run data modify entity @s Item.tag.Enchantments set value [{id:"minecraft:protection",lvl:0}]
#Call on a new machine to initialize its connections
function energy:v1/api/init_machine
