function simplenergy:place/look_all
execute as @e[type=minecraft:area_effect_cloud,tag=SE_Placed,limit=1] at @s run function simplenergy:place/simplunium_block/2
advancement revoke @s only simplenergy:place/simplunium_block
