execute unless entity @s[nbt={SelectedItem:{tag:{simplenergy:{multimeter:1b}}}}] run scoreboard players reset @s simplenergy.multimeter_use

#Look at where player is looking at and stop when found a block (Count simplenergy.multimeter_use to null)
	execute if score @s simplenergy.multimeter_use matches 1.. anchored eyes positioned ^ ^ ^.2 run function simplenergy:work/multimeter_raycast

scoreboard players reset @s simplenergy.multimeter_use
