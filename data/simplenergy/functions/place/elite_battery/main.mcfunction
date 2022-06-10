
setblock ~ ~ ~ iron_block
function simplenergy:place/glow_item_frame_0
execute as @e[type=glow_item_frame,tag=simplenergy.new] at @s run function simplenergy:place/elite_battery/secondary
