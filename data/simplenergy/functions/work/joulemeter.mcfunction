execute unless entity @s[nbt={SelectedItem:{tag:{SE_Joulemeter:1b}}}] run scoreboard players reset @s SE_JoulemeterUse

#Look at where player is looking at and stop when found a block (SE_JoulemeterUse to null)
    execute if score @s SE_JoulemeterUse matches 1.. anchored eyes positioned ^ ^ ^ unless block ~ ~ ~ #simplenergy:non_solid run function simplenergy:work/joulemeter_2
    execute if score @s SE_JoulemeterUse matches 1.. anchored eyes positioned ^ ^ ^0.50 unless block ~ ~ ~ #simplenergy:non_solid run function simplenergy:work/joulemeter_2
    execute if score @s SE_JoulemeterUse matches 1.. anchored eyes positioned ^ ^ ^0.75 unless block ~ ~ ~ #simplenergy:non_solid run function simplenergy:work/joulemeter_2
    execute if score @s SE_JoulemeterUse matches 1.. anchored eyes positioned ^ ^ ^1.00 unless block ~ ~ ~ #simplenergy:non_solid run function simplenergy:work/joulemeter_2
    execute if score @s SE_JoulemeterUse matches 1.. anchored eyes positioned ^ ^ ^1.25 unless block ~ ~ ~ #simplenergy:non_solid run function simplenergy:work/joulemeter_2
    execute if score @s SE_JoulemeterUse matches 1.. anchored eyes positioned ^ ^ ^1.50 unless block ~ ~ ~ #simplenergy:non_solid run function simplenergy:work/joulemeter_2
    execute if score @s SE_JoulemeterUse matches 1.. anchored eyes positioned ^ ^ ^1.75 unless block ~ ~ ~ #simplenergy:non_solid run function simplenergy:work/joulemeter_2
    execute if score @s SE_JoulemeterUse matches 1.. anchored eyes positioned ^ ^ ^2.00 unless block ~ ~ ~ #simplenergy:non_solid run function simplenergy:work/joulemeter_2
    execute if score @s SE_JoulemeterUse matches 1.. anchored eyes positioned ^ ^ ^2.25 unless block ~ ~ ~ #simplenergy:non_solid run function simplenergy:work/joulemeter_2
    execute if score @s SE_JoulemeterUse matches 1.. anchored eyes positioned ^ ^ ^2.50 unless block ~ ~ ~ #simplenergy:non_solid run function simplenergy:work/joulemeter_2
    execute if score @s SE_JoulemeterUse matches 1.. anchored eyes positioned ^ ^ ^2.75 unless block ~ ~ ~ #simplenergy:non_solid run function simplenergy:work/joulemeter_2
    execute if score @s SE_JoulemeterUse matches 1.. anchored eyes positioned ^ ^ ^3.00 unless block ~ ~ ~ #simplenergy:non_solid run function simplenergy:work/joulemeter_2
    execute if score @s SE_JoulemeterUse matches 1.. anchored eyes positioned ^ ^ ^3.25 unless block ~ ~ ~ #simplenergy:non_solid run function simplenergy:work/joulemeter_2
    execute if score @s SE_JoulemeterUse matches 1.. anchored eyes positioned ^ ^ ^3.50 unless block ~ ~ ~ #simplenergy:non_solid run function simplenergy:work/joulemeter_2
    execute if score @s SE_JoulemeterUse matches 1.. anchored eyes positioned ^ ^ ^3.75 unless block ~ ~ ~ #simplenergy:non_solid run function simplenergy:work/joulemeter_2
    execute if score @s SE_JoulemeterUse matches 1.. anchored eyes positioned ^ ^ ^4.00 unless block ~ ~ ~ #simplenergy:non_solid run function simplenergy:work/joulemeter_2
    execute if score @s SE_JoulemeterUse matches 1.. anchored eyes positioned ^ ^ ^4.25 unless block ~ ~ ~ #simplenergy:non_solid run function simplenergy:work/joulemeter_2
    execute if score @s SE_JoulemeterUse matches 1.. anchored eyes positioned ^ ^ ^4.50 unless block ~ ~ ~ #simplenergy:non_solid run function simplenergy:work/joulemeter_2
    execute if score @s SE_JoulemeterUse matches 1.. anchored eyes positioned ^ ^ ^4.75 unless block ~ ~ ~ #simplenergy:non_solid run function simplenergy:work/joulemeter_2
    execute if score @s SE_JoulemeterUse matches 1.. anchored eyes positioned ^ ^ ^5.00 unless block ~ ~ ~ #simplenergy:non_solid run function simplenergy:work/joulemeter_2

scoreboard players reset @s SE_JoulemeterUse