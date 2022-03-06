execute as @e[type=glow_item_frame,tag=!simplenergy.balance,tag=!simplenergy.balanced,tag=simplenergy.destroyer,distance=..1.1] if score @s energy.max_storage = Temp simplenergy.data at @s run function simplenergy:balance/found
#Redistributes Energy
	scoreboard players set Temp simplenergy.data 0
	scoreboard players set Count simplenergy.data 0
	execute as @e[type=glow_item_frame,tag=simplenergy.balance] run function simplenergy:balance/add
	scoreboard players operation Remain simplenergy.data = Temp simplenergy.data
	scoreboard players operation Balance simplenergy.data = Temp simplenergy.data
	scoreboard players operation Balance simplenergy.data /= Count simplenergy.data
	scoreboard players operation Remain simplenergy.data %= Count simplenergy.data
	scoreboard players operation @e[type=glow_item_frame,tag=simplenergy.balance] energy.storage = Balance simplenergy.data
	scoreboard players operation @s energy.storage += Remain simplenergy.data
	execute if score @s energy.storage > @s energy.max_storage run scoreboard players operation @s energy.storage = @s energy.max_storage
