
setblock ~ ~ ~ daylight_detector
function simplenergy:place/glow_item_frame_0
execute as @e[tag=simplenergy.new] at @s run function simplenergy:place/solar_panel/secondary
