#Look at where the block has been placed
    function simplenergy:place/look_all
#Place the custom block
    execute as @e[type=minecraft:area_effect_cloud,tag=SE_Placed,limit=1] at @s run function simplenergy:place/advanced_battery/2
#Update scores
    execute as @e[type=minecraft:glow_item_frame,tag=SE_SetNew,limit=1] at @s run function simplenergy:place/advanced_battery/3
advancement revoke @s only simplenergy:place/advanced_battery
