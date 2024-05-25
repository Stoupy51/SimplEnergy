
#> simplenergy:second
#
# @within	simplenergy:tick
#

# Reset timer
scoreboard players set #second simplenergy.data 0

# 1 second break detection
execute as @e[type=item_display,tag=simplenergy.custom_block,tag=!simplenergy.vanilla.minecraft_polished_deepslate,predicate=!simplenergy:advanced_check_vanilla_blocks] at @s run function simplenergy:custom_blocks/destroy

