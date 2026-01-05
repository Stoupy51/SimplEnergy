
#> simplenergy:custom_blocks/destroy
#
# @executed	as @e[type=item_display,tag=...,predicate=!simplenergy:check_vanilla_blocks] & at @s
#
# @within	simplenergy:v2.0.15/tick_2 [ as @e[type=item_display,tag=...,predicate=!simplenergy:check_vanilla_blocks] & at @s ]
#			simplenergy:v2.0.15/second [ as @e[type=#simplenergy:custom_blocks,tag=...,predicate=!simplenergy:advanced_check_vanilla_blocks] & at @s ]
#			simplenergy:v2.0.15/second_5 [ as @e[type=item_display,tag=simplenergy.custom_block,predicate=!simplenergy:advanced_check_vanilla_blocks] & at @s ]
#			simplenergy:calls/common_signals/custom_block_destroy [ as @e[tag=simplenergy.custom_block,dx=0,dy=0,dz=0] & at @s ]
#			simplenergy:calls/mechanization/wrench_break
#

# Check for missing vanilla blocks
execute if score #total_vanilla_barrel simplenergy.data matches 1.. if entity @s[tag=simplenergy.vanilla.minecraft_barrel] unless block ~ ~ ~ minecraft:barrel run return run function simplenergy:custom_blocks/_groups/minecraft_barrel
execute if score #total_vanilla_brewing_stand simplenergy.data matches 1.. if entity @s[tag=simplenergy.vanilla.minecraft_brewing_stand] unless block ~ ~ ~ minecraft:brewing_stand run return run function simplenergy:custom_blocks/_groups/minecraft_brewing_stand
execute if score #total_vanilla_cauldron simplenergy.data matches 1.. if entity @s[tag=simplenergy.vanilla.minecraft_cauldron] unless block ~ ~ ~ #minecraft:cauldrons run return run function simplenergy:custom_blocks/_groups/minecraft_cauldron
execute if score #total_vanilla_conduit simplenergy.data matches 1.. if entity @s[tag=simplenergy.vanilla.minecraft_conduit] unless block ~ ~ ~ minecraft:conduit run return run function simplenergy:custom_blocks/_groups/minecraft_conduit
execute if score #total_vanilla_daylight_detector simplenergy.data matches 1.. if entity @s[tag=simplenergy.vanilla.minecraft_daylight_detector] unless block ~ ~ ~ minecraft:daylight_detector run return run function simplenergy:custom_blocks/_groups/minecraft_daylight_detector
execute if score #total_vanilla_furnace simplenergy.data matches 1.. if entity @s[tag=simplenergy.vanilla.minecraft_furnace] unless block ~ ~ ~ minecraft:furnace run return run function simplenergy:custom_blocks/_groups/minecraft_furnace
execute if score #total_vanilla_gold_block simplenergy.data matches 1.. if entity @s[tag=simplenergy.vanilla.minecraft_gold_block] unless block ~ ~ ~ minecraft:gold_block run return run function simplenergy:custom_blocks/_groups/minecraft_gold_block
execute if score #total_vanilla_iron_block simplenergy.data matches 1.. if entity @s[tag=simplenergy.vanilla.minecraft_iron_block] unless block ~ ~ ~ minecraft:iron_block run return run function simplenergy:custom_blocks/_groups/minecraft_iron_block
execute if score #total_vanilla_iron_trapdoor simplenergy.data matches 1.. if entity @s[tag=simplenergy.vanilla.minecraft_iron_trapdoor] unless block ~ ~ ~ minecraft:iron_trapdoor run return run function simplenergy:custom_blocks/_groups/minecraft_iron_trapdoor
execute if score #total_vanilla_player_head simplenergy.data matches 1.. if entity @s[tag=simplenergy.vanilla.minecraft_player_head] unless block ~ ~ ~ minecraft:player_head run return run function simplenergy:custom_blocks/_groups/minecraft_player_head
execute if score #total_vanilla_polished_deepslate simplenergy.data matches 1.. if entity @s[tag=simplenergy.vanilla.minecraft_polished_deepslate] unless block ~ ~ ~ minecraft:polished_deepslate run return run function simplenergy:custom_blocks/_groups/minecraft_polished_deepslate
execute if score #total_vanilla_raw_iron_block simplenergy.data matches 1.. if entity @s[tag=simplenergy.vanilla.minecraft_raw_iron_block] unless block ~ ~ ~ minecraft:raw_iron_block run return run function simplenergy:custom_blocks/_groups/minecraft_raw_iron_block
execute if score #total_vanilla_waxed_copper_block simplenergy.data matches 1.. if entity @s[tag=simplenergy.vanilla.minecraft_waxed_copper_block] unless block ~ ~ ~ minecraft:waxed_copper_block run return run function simplenergy:custom_blocks/_groups/minecraft_waxed_copper_block
execute if score #total_vanilla_item_frame simplenergy.data matches 1.. if entity @s[tag=simplenergy.vanilla.minecraft_item_frame] unless items entity @s contents *[minecraft:custom_data~{simplenergy:{item_frame_destroy:true}}] run return run function simplenergy:custom_blocks/_groups/minecraft_item_frame

