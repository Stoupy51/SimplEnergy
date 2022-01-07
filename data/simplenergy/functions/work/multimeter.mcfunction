execute unless entity @s[nbt={SelectedItem:{tag:{SimplEnergy_Multimeter:1b}}}] run scoreboard players reset @s SimplEnergy_MultimeterUse

#Look at where player is looking at and stop when found a block (Count SimplEnergy_MultimeterUse to null)
	execute if score @s SimplEnergy_MultimeterUse matches 1.. anchored eyes positioned ^ ^ ^.2 run function simplenergy:work/multimeter_raycast

scoreboard players reset @s SimplEnergy_MultimeterUse
