execute store result score @s energy.max_storage run data get entity @a[tag=SE_Placer,limit=1] SelectedItem.tag.energy.max_storage
scoreboard players operation @s energy.transfer_rate = @s energy.max_storage
execute store result score @s energy.storage run data get entity @a[tag=SE_Placer,limit=1] SelectedItem.tag.energy.storage
tag @s remove SE_SetNew
