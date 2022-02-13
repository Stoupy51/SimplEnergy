
#This hurt function is only available for based Leather Armors.
#This system actually works by simulating an Unbreaking Enchantment.

#Revoke advancement & Storing player inventory
	advancement revoke @s only simplenergy:hurt
	data modify storage simplenergy:items all.Temp set from entity @s Inventory

function #simplenergy:hurt

scoreboard players reset Temp2 SimplEnergy_Data
scoreboard players reset Random SimplEnergy_Data
scoreboard players reset DurabilityMultiplier SimplEnergy_Data
