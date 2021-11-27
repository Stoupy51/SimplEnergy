execute unless entity @s[nbt={SelectedItem:{tag:{SE_Joulemeter:1b}}}] run scoreboard players reset @s SE_JoulemeterUse

#Look at where player is looking at and stop when found a block (Count SE_JoulemeterUse to null)
	execute if score @s SE_JoulemeterUse matches 1.. anchored eyes positioned ^ ^ ^.2 run function simplenergy:work/joulemeter_raycast

scoreboard players reset @s SE_JoulemeterUse
