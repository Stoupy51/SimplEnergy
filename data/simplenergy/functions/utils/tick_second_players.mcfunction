
#> simplenergy:utils/tick_second_players
#
# @within			simplenergy:tick_second
# @executed			as & at current player
#
# @description		Function executed every second for each player
#

# Setblock yellow shulker box at force loaded chunk (Used for energy lore and more)
setblock -30000000 14 1610 yellow_shulker_box
forceload add -30000000 1600

# Playsound remove tags
tag @s remove simplenergy.ps.electric_brewing_stand
tag @s remove simplenergy.ps.electric_furnace
tag @s remove simplenergy.ps.electric_smelter
tag @s remove simplenergy.ps.furnace_generator

