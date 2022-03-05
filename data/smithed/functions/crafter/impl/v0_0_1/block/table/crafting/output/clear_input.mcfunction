####################
# Clears the crafting input
####################

tag @s remove smd.crafter.assembled_output
execute as @a[distance=..12,sort=nearest,tag=smd.inside_crafter] run function smithed:crafter/impl/v0_0_1/block/table/crafting/output/cursor_check/main
execute if entity @s[tag=!smd.no_shift_click] unless entity @a[distance=..12,sort=nearest,tag=smd.inside_crafter,tag=!smd.shift_clicked] run function smithed:crafter/impl/v0_0_1/block/table/crafting/output/shift_click/main

function smithed:crafter/impl/v0_0_1/block/table/crafting/output/clear_input/test

data modify storage smd:crafter flags set value []