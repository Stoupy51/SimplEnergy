
#> simplenergy:v2.0.15/tick_2
#
# @within	simplenergy:v2.0.15/tick
#

# Reset timer
scoreboard players set #tick_2 simplenergy.data 1

# 2 ticks destroy detection (item_display only)
execute if score #total_custom_blocks simplenergy.data matches 1.. as @e[type=item_display,tag=simplenergy.custom_block,tag=!simplenergy.vanilla.minecraft_polished_deepslate,predicate=!simplenergy:check_vanilla_blocks] at @s run function simplenergy:custom_blocks/destroy

# Passive offhand loop
execute as @a[tag=!global.ignore.gui,tag=simplenergy.offhand] at @s run function simplenergy:utils/passive_offhand

