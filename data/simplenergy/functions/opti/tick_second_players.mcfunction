
function simplenergy:generate/player

data modify storage simplenergy:main temp set from entity @s Inventory
execute store result score @s simplenergy.head run data get storage simplenergy:main temp[{Slot:103b}].tag.Damage
execute store result score @s simplenergy.chest run data get storage simplenergy:main temp[{Slot:102b}].tag.Damage
execute store result score @s simplenergy.legs run data get storage simplenergy:main temp[{Slot:101b}].tag.Damage
execute store result score @s simplenergy.boots run data get storage simplenergy:main temp[{Slot:100b}].tag.Damage
execute store result score @s simplenergy.offhand run data get storage simplenergy:main temp[{Slot:-106b}].tag.Damage
execute store result score @s simplenergy.mainhand run data get entity @s SelectedItem.tag.Damage
data remove storage simplenergy:main temp

setblock -29999999 0 2013 minecraft:yellow_shulker_box
forceload add -29999999 2013

#playsound remove tags
	tag @s remove simplenergy.ps.electric_brewing_stand
	tag @s remove simplenergy.ps.electric_furnace
	tag @s remove simplenergy.ps.electric_smelter
	tag @s remove simplenergy.ps.furnace_generator
