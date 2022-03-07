
#This hurt function is only available for based Leather Armors.
#This system actually works by simulating an Unbreaking Enchantment.

#Revoke advancement & Storing player inventory
	advancement revoke @s only simplenergy:hurt
	data modify storage simplenergy:items temp set from entity @s Inventory

#Checking Durability Change
	execute store result score Helmet simplenergy.data run data get storage simplenergy:items temp[{Slot:103b}].tag.Damage
	execute store result score Chestplate simplenergy.data run data get storage simplenergy:items temp[{Slot:102b}].tag.Damage
	execute store result score Leggings simplenergy.data run data get storage simplenergy:items temp[{Slot:101b}].tag.Damage
	execute store result score Boots simplenergy.data run data get storage simplenergy:items temp[{Slot:100b}].tag.Damage

#Send Hurt Signal
	function #simplenergy:hurt

#Reset scores
	scoreboard players reset Helmet simplenergy.data
	scoreboard players reset Chestplate simplenergy.data
	scoreboard players reset Leggings simplenergy.data
	scoreboard players reset Boots simplenergy.data

	scoreboard players reset temp simplenergy.data
	scoreboard players reset temp2 simplenergy.data
	scoreboard players reset Random simplenergy.data
	scoreboard players reset DurabilityMultiplier simplenergy.data
