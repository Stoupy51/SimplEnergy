execute unless entity @s[nbt={SelectedItem:{tag:{SE_Multimeter:1b}}}] run scoreboard players reset @s SE_MultimeterUse

#Look at where player is looking at and stop when found a block (Count SE_MultimeterUse to null)
	execute if score @s SE_MultimeterUse matches 1.. anchored eyes positioned ^ ^ ^.2 run function simplenergy:work/multimeter_raycast

scoreboard players reset @s SE_MultimeterUse
