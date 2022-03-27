
#This hurt function is only available for based Leather Armors.
#This system actually works by simulating an Unbreaking Enchantment.

#Revoke advancement & Storing player inventory
	advancement revoke @s only simplenergy:hurt
	data modify storage simplenergy:items temp set from entity @s Inventory

#Checking Durability Change
	execute store result score #helmet simplenergy.data run data get storage simplenergy:items temp[{Slot:103b}].tag.Damage
	execute store result score #chestplate simplenergy.data run data get storage simplenergy:items temp[{Slot:102b}].tag.Damage
	execute store result score #leggings simplenergy.data run data get storage simplenergy:items temp[{Slot:101b}].tag.Damage
	execute store result score #boots simplenergy.data run data get storage simplenergy:items temp[{Slot:100b}].tag.Damage

#Send Hurt Signal
	function #simplenergy:hurt

#Reset scores
	scoreboard players reset #helmet simplenergy.data
	scoreboard players reset #chestplate simplenergy.data
	scoreboard players reset #leggings simplenergy.data
	scoreboard players reset #boots simplenergy.data

	scoreboard players reset #temp simplenergy.data
	scoreboard players reset #temp_2 simplenergy.data
	scoreboard players reset #random simplenergy.data
	scoreboard players reset #durability_multiplier simplenergy.data
