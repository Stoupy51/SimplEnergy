function simplenergy:place/look_all
tag @s add SE_Placer
execute as @e[type=minecraft:area_effect_cloud,tag=SE_Placed,limit=1] at @s run function simplenergy:place/electric_smelter/2
execute as @e[type=minecraft:glow_item_frame,tag=SE_SetNew,limit=1] at @s run function simplenergy:place/electric_smelter/3
advancement revoke @s only simplenergy:place/electric_smelter
tag @s remove SE_Placer