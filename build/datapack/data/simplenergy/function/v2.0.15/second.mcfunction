
#> simplenergy:v2.0.15/second
#
# @within	simplenergy:v2.0.15/tick
#

# Reset timer
scoreboard players set #second simplenergy.data 0

# 1 second break detection (any custom block)
execute if score #total_custom_blocks simplenergy.data matches 1.. as @e[type=#simplenergy:custom_blocks,tag=simplenergy.custom_block,tag=!simplenergy.vanilla.minecraft_polished_deepslate,predicate=!simplenergy:advanced_check_vanilla_blocks] at @s run function simplenergy:custom_blocks/destroy

# Custom blocks second functions
execute if score #second_entities simplenergy.data matches 1.. as @e[tag=simplenergy.second] at @s run function simplenergy:custom_blocks/second

