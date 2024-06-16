
#> simplenergy:v2.0.0/second
#
# @within	simplenergy:v2.0.0/tick
#

# Reset timer
scoreboard players set #second simplenergy.data 0

# 1 second break detection
execute as @e[type=item_display,tag=simplenergy.custom_block,tag=!simplenergy.vanilla.minecraft_polished_deepslate,predicate=!simplenergy:advanced_check_vanilla_blocks] at @s run function simplenergy:custom_blocks/destroy

# Custom blocks second functions
execute as @e[tag=simplenergy.second] at @s run function simplenergy:custom_blocks/second

