
#Check for an unvisited zone if dimension is authorized
	scoreboard players set #authorized simplenergy.data 1
	function #simplenergy:generate_denied_dimensions
	execute if score #authorized simplenergy.data matches 1 run function simplenergy:generate/player_2

