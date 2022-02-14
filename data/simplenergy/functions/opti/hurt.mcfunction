
#Custom hurt durability for Simplunium Armor
	scoreboard players set DurabilityMultiplier SimplEnergy_Data 7
	execute unless score @s SimplEnergy_HelmetDurability = Helmet SimplEnergy_Data if data storage simplenergy:items all.Temp[{Slot:103b,tag:{SimplEnergy_SimpluniumHelmet:1b}}] run function simplenergy:opti/hurt/helmet
	execute unless score @s SimplEnergy_ChestplateDurability = Chestplate SimplEnergy_Data if data storage simplenergy:items all.Temp[{Slot:102b,tag:{SimplEnergy_SimpluniumChestplate:1b}}] run function simplenergy:opti/hurt/chestplate
	execute unless score @s SimplEnergy_LeggingsDurability = Leggings SimplEnergy_Data if data storage simplenergy:items all.Temp[{Slot:101b,tag:{SimplEnergy_SimpluniumLeggings:1b}}] run function simplenergy:opti/hurt/leggings
	execute unless score @s SimplEnergy_BootsDurability = Boots SimplEnergy_Data if data storage simplenergy:items all.Temp[{Slot:100b,tag:{SimplEnergy_SimpluniumBoots:1b}}] run function simplenergy:opti/hurt/boots
