
#> simplenergy:second_5
#
# @within	simplenergy:tick
#

# Reset timer
scoreboard players set #second_5 simplenergy.data -10

# 5 seconds break detection
execute as @e[type=item_display,tag=simplenergy.custom_block,predicate=!simplenergy:advanced_check_vanilla_blocks] at @s run function simplenergy:custom_blocks/destroy

