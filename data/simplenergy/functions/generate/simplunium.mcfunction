
function simplenergy:generate/utils/random_position

scoreboard players set #max_attempts simplenergy.data 50
function simplenergy:generate/utils/find_adjacent_air

#Placing Ore
	execute at @s if block ~ ~ ~ #simplenergy:for_simplunium_ore run function simplenergy:generate/simplunium_type
	execute at @s positioned ~0.8 ~0.8 ~0.8 if block ~ ~ ~ #simplenergy:for_simplunium_ore run function simplenergy:generate/simplunium_type
	execute at @s positioned ~0.0 ~0.8 ~0.8 if block ~ ~ ~ #simplenergy:for_simplunium_ore run function simplenergy:generate/simplunium_type
	execute at @s positioned ~0.8 ~0.8 ~0.0 if block ~ ~ ~ #simplenergy:for_simplunium_ore run function simplenergy:generate/simplunium_type
	execute at @s positioned ~0.8 ~0.0 ~0.8 if block ~ ~ ~ #simplenergy:for_simplunium_ore run function simplenergy:generate/simplunium_type
	execute at @s positioned ~0.0 ~0.8 ~0.0 if block ~ ~ ~ #simplenergy:for_simplunium_ore run function simplenergy:generate/simplunium_type

kill @s
