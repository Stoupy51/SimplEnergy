#Get and Search machines with same Energy Storage from SimplEnergy
    scoreboard players operation Energy SE_Data = @s EF_EnergyStorage
    tag @s add SE_Balance
    tag @s add SE_Balanced
    execute if entity @e[type=minecraft:glow_item_frame,tag=!SE_Balance,tag=!SE_Balanced,tag=SE_Destroyer,distance=..1.1] run function simplenergy:balance/balance
