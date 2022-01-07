tag @s add SimplEnergy_Balance
tag @s add SimplEnergy_Balanced
execute as @e[type=glow_item_frame,tag=!SimplEnergy_Balance,tag=SimplEnergy_Destroyer,distance=..1.1] if score @s energy.max_storage = Temp SimplEnergy_Data at @s run function simplenergy:balance/found
