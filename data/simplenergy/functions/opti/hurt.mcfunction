
#Custom hurt durability for Simplunium Armor
	scoreboard players set DurabilityMultiplier SimplEnergy_Data 7
	execute if data storage simplenergy:items all.Temp[{Slot:103b,tag:{SimplEnergy_SimpluniumHelmet:1b}}] run function simplenergy:opti/hurt_helmet
	execute if data storage simplenergy:items all.Temp[{Slot:102b,tag:{SimplEnergy_SimpluniumChestplate:1b}}] run function simplenergy:opti/hurt_chestplate
	execute if data storage simplenergy:items all.Temp[{Slot:101b,tag:{SimplEnergy_SimpluniumLeggings:1b}}] run function simplenergy:opti/hurt_leggings
	execute if data storage simplenergy:items all.Temp[{Slot:100b,tag:{SimplEnergy_SimpluniumBoots:1b}}] run function simplenergy:opti/hurt_boots
