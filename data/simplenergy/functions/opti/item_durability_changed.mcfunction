
#This system works by simulating an Unbreaking Enchantment.

#Storing player inventory
	data modify storage simplenergy:main durability set from entity @s Inventory
	data modify storage simplenergy:main temp set from entity @s SelectedItem
	data modify storage simplenergy:main temp.Slot set value -42b
	data modify storage simplenergy:main durability append from storage simplenergy:main temp

#Checking Durability Change
	execute store result score #helmet simplenergy.data run data get storage simplenergy:main durability[{Slot:103b}].tag.Damage
	execute store result score #chestplate simplenergy.data run data get storage simplenergy:main durability[{Slot:102b}].tag.Damage
	execute store result score #leggings simplenergy.data run data get storage simplenergy:main durability[{Slot:101b}].tag.Damage
	execute store result score #boots simplenergy.data run data get storage simplenergy:main durability[{Slot:100b}].tag.Damage
	execute store result score #offhand simplenergy.data run data get storage simplenergy:main durability[{Slot:-106b}].tag.Damage
	execute store result score #mainhand simplenergy.data run data get storage simplenergy:main durability[{Slot:-42b}].tag.Damage

#Send Durability Change Signal
	function #simplenergy:durability_multiplier

#Reset scores
	scoreboard players reset #helmet simplenergy.data
	scoreboard players reset #chestplate simplenergy.data
	scoreboard players reset #leggings simplenergy.data
	scoreboard players reset #boots simplenergy.data
	scoreboard players reset #offhand simplenergy.data
	scoreboard players reset #mainhand simplenergy.data

	scoreboard players reset #temp simplenergy.data
	scoreboard players reset #temp_2 simplenergy.data
	scoreboard players reset #random simplenergy.data
	scoreboard players reset #durability_multiplier simplenergy.data

#data remove storage simplenergy:main durability
#data remove storage simplenergy:main temp
tag @s remove simplenergy.durability_changed

#Update durability
data modify storage simplenergy:main temp set from entity @s Inventory
execute store result score @s simplenergy.head run data get storage simplenergy:main temp[{Slot:103b}].tag.Damage
execute store result score @s simplenergy.chest run data get storage simplenergy:main temp[{Slot:102b}].tag.Damage
execute store result score @s simplenergy.legs run data get storage simplenergy:main temp[{Slot:101b}].tag.Damage
execute store result score @s simplenergy.boots run data get storage simplenergy:main temp[{Slot:100b}].tag.Damage
execute store result score @s simplenergy.offhand run data get storage simplenergy:main temp[{Slot:-106b}].tag.Damage
execute store result score @s simplenergy.mainhand run data get entity @s SelectedItem.tag.Damage
data remove storage simplenergy:main temp

