
#> simplenergy:tick_2
#
# @within	simplenergy:tick
#

# Reset timer
scoreboard players set #tick_2 simplenergy.data 1

# 2 ticks destroy detection
execute as @e[type=item_display,tag=simplenergy.custom_block,tag=!simplenergy.vanilla.minecraft_polished_deepslate,predicate=!simplenergy:check_vanilla_blocks] at @s run function simplenergy:custom_blocks/destroy
