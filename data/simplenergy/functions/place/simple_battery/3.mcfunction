execute store result score @s energy.max_storage run data get entity @a[tag=SimplEnergy_Placer,limit=1] SelectedItem.tag.energy.max_storage
scoreboard players operation @s energy.transfer_rate = @s energy.max_storage
execute store result score @s energy.storage run data get entity @a[tag=SimplEnergy_Placer,limit=1] SelectedItem.tag.energy.storage
tag @s remove SimplEnergy_SetNew
#Call on a new machine to initialize its connections
function energy:v1/api/init_machine
