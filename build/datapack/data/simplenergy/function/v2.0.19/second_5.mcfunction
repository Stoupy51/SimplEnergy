
#> simplenergy:v2.0.19/second_5
#
# @within	simplenergy:v2.0.19/tick
#

# Reset timer
scoreboard players set #second_5 simplenergy.data -10

# 5 seconds break detection (item display only)
execute if score #total_custom_blocks simplenergy.data matches 1.. as @e[type=item_display,tag=simplenergy.custom_block,predicate=!simplenergy:advanced_check_vanilla_blocks] at @s run function simplenergy:custom_blocks/destroy

# 5 seconds dynamic brightness update (random sample of item_display custom blocks)
execute if score #total_custom_blocks simplenergy.data matches 1.. as @e[type=item_display,tag=simplenergy.custom_block,sort=random,limit=50] at @s run function simplenergy:custom_blocks/compute_brightness

# Energy Balancing system (balance every device having at least 20 kJ)
execute as @e[tag=simplenergy.can_balance,scores={energy.storage=20..}] at @s[tag=!simplenergy.balanced] run function simplenergy:balancing/main
tag @e[tag=simplenergy.balanced] remove simplenergy.balanced

