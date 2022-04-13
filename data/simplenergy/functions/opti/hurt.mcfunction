
#Custom hurt durability for Simplunium Armor
	scoreboard players set #durability_multiplier simplenergy.data 7
	execute unless score @s simplenergy.head = #helmet simplenergy.data if data storage simplenergy:main temp[{Slot:103b,tag:{simplenergy:{simplunium_helmet:1b}}}] run function simplenergy:opti/hurt/helmet
	execute unless score @s simplenergy.chest = #chestplate simplenergy.data if data storage simplenergy:main temp[{Slot:102b,tag:{simplenergy:{simplunium_chestplate:1b}}}] run function simplenergy:opti/hurt/chestplate
	execute unless score @s simplenergy.legs = #leggings simplenergy.data if data storage simplenergy:main temp[{Slot:101b,tag:{simplenergy:{simplunium_leggings:1b}}}] run function simplenergy:opti/hurt/leggings
	execute unless score @s simplenergy.boots = #boots simplenergy.data if data storage simplenergy:main temp[{Slot:100b,tag:{simplenergy:{simplunium_boots:1b}}}] run function simplenergy:opti/hurt/boots
