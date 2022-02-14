
#This hurt function is only available for based Leather Armors.
#This system actually works by simulating an Unbreaking Enchantment.

#Revoke advancement & Storing player inventory
	advancement revoke @s only simplenergy:hurt
	data modify storage simplenergy:items all.Temp set from entity @s Inventory

#Checking Durability Change
	execute store result score Helmet SimplEnergy_Data run data get storage simplenergy:items all.Temp[{Slot:103b}].tag.Damage
	execute store result score Chestplate SimplEnergy_Data run data get storage simplenergy:items all.Temp[{Slot:102b}].tag.Damage
	execute store result score Leggings SimplEnergy_Data run data get storage simplenergy:items all.Temp[{Slot:101b}].tag.Damage
	execute store result score Boots SimplEnergy_Data run data get storage simplenergy:items all.Temp[{Slot:100b}].tag.Damage

#Send Hurt Signal
	function #simplenergy:hurt

#Reset scores
	scoreboard players reset Helmet SimplEnergy_Data
	scoreboard players reset Chestplate SimplEnergy_Data
	scoreboard players reset Leggings SimplEnergy_Data
	scoreboard players reset Boots SimplEnergy_Data

	scoreboard players reset Temp SimplEnergy_Data
	scoreboard players reset Temp2 SimplEnergy_Data
	scoreboard players reset Random SimplEnergy_Data
	scoreboard players reset DurabilityMultiplier SimplEnergy_Data
