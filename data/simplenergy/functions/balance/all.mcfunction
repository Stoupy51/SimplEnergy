#Get and Search machines with same Energy Storage from SimplEnergy
	scoreboard players operation temp simplenergy.data = @s energy.max_storage
	tag @s add simplenergy.balance
	tag @s add simplenergy.balanced
	execute if entity @e[type=glow_item_frame,tag=!simplenergy.balance,tag=!simplenergy.balanced,tag=simplenergy.destroyer,distance=..1.1] run function simplenergy:balance/balance
	tag @s remove simplenergy.balance

#Continue
	tag @e[type=glow_item_frame,tag=simplenergy.balance] remove simplenergy.balance
	execute if entity @s[tag=simplenergy.solar_panel] as @e[type=glow_item_frame,tag=simplenergy.solar_panel,tag=!simplenergy.balanced,limit=1] at @s run function simplenergy:balance/all
	execute if entity @s[tag=simplenergy.cauldron_generator] as @e[type=glow_item_frame,tag=simplenergy.cauldron_generator,tag=!simplenergy.balanced,limit=1] at @s run function simplenergy:balance/all
	execute if entity @s[tag=simplenergy.simple_battery] as @e[type=glow_item_frame,tag=simplenergy.simple_battery,tag=!simplenergy.balanced,limit=1] at @s run function simplenergy:balance/all
	execute if entity @s[tag=simplenergy.advanced_battery] as @e[type=glow_item_frame,tag=simplenergy.advanced_battery,tag=!simplenergy.balanced,limit=1] at @s run function simplenergy:balance/all
	execute if entity @s[tag=simplenergy.elite_battery] as @e[type=glow_item_frame,tag=simplenergy.elite_battery,tag=!simplenergy.balanced,limit=1] at @s run function simplenergy:balance/all
