
setblock ~ ~ ~ air
setblock ~ ~ ~ player_head{SkullOwner:{Id:[I;-1416541,25415515,-3515615,-4156415],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzlmNjNlZGIwMDA4NWM1Mzk0Y2FmZjg2Yzk3ZmU4NGQxYmUwMGEwMDcxMDE4Y2YwOTAwZTdiNjMwYTY2Y2VlZSJ9fX0="}]}},id:"minecraft:skull"}
function simplenergy:place/item_frame_0
execute as @e[tag=simplenergy.new] at @s run function simplenergy:place/advanced_cable/secondary
kill @s
