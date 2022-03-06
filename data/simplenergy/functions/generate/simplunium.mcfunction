
function simplenergy:generate/utils/random_position

scoreboard players set #maxTry simplenergy.data 50
execute at @s run function simplenergy:generate/utils/find_adjacent_air

#Placing Ore
	execute at @s if block ~ ~ ~ #simplenergy:for_simplunium_ore run function simplenergy:place/simplunium_ore/main
	execute at @s positioned ~0.8 ~0.8 ~0.8 if block ~ ~ ~ #simplenergy:for_simplunium_ore run function simplenergy:place/simplunium_ore/main
	execute at @s positioned ~0.0 ~0.8 ~0.8 if block ~ ~ ~ #simplenergy:for_simplunium_ore run function simplenergy:place/simplunium_ore/main
	execute at @s positioned ~0.8 ~0.8 ~0.0 if block ~ ~ ~ #simplenergy:for_simplunium_ore run function simplenergy:place/simplunium_ore/main
	execute at @s positioned ~0.8 ~0.0 ~0.8 if block ~ ~ ~ #simplenergy:for_simplunium_ore run function simplenergy:place/simplunium_ore/main
	execute at @s positioned ~0.0 ~0.8 ~0.0 if block ~ ~ ~ #simplenergy:for_simplunium_ore run function simplenergy:place/simplunium_ore/main

kill @s
