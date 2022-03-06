
#Custom hurt durability for Simplunium Armor
	scoreboard players set DurabilityMultiplier simplenergy.data 7
	execute unless score @s simplenergy.head = Helmet simplenergy.data if data storage simplenergy:items all.Temp[{Slot:103b,tag:{simplenergy:{simplunium_helmet:1b}}}] run function simplenergy:opti/hurt/helmet
	execute unless score @s simplenergy.chest = Chestplate simplenergy.data if data storage simplenergy:items all.Temp[{Slot:102b,tag:{simplenergy:{simplunium_chestplate:1b}}}] run function simplenergy:opti/hurt/chestplate
	execute unless score @s simplenergy.legs = Leggings simplenergy.data if data storage simplenergy:items all.Temp[{Slot:101b,tag:{simplenergy:{simplunium_leggings:1b}}}] run function simplenergy:opti/hurt/leggings
	execute unless score @s simplenergy.boots = Boots simplenergy.data if data storage simplenergy:items all.Temp[{Slot:100b,tag:{simplenergy:{simplunium_boots:1b}}}] run function simplenergy:opti/hurt/boots
