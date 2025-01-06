
#> simplenergy:custom_blocks/destroy
#
# @within	simplenergy:v2.0.1/tick_2
#			simplenergy:v2.0.1/second
#			simplenergy:v2.0.1/second_5
#			simplenergy:calls/common_signals/on_ore_destroyed
#			simplenergy:calls/mechanization/wrench_break
#

execute if score #total_vanilla_barrel simplenergy.data matches 1.. if entity @s[tag=simplenergy.vanilla.minecraft_barrel] unless block ~ ~ ~ minecraft:barrel run function simplenergy:custom_blocks/_groups/minecraft_barrel
execute if score #total_vanilla_brewing_stand simplenergy.data matches 1.. if entity @s[tag=simplenergy.vanilla.minecraft_brewing_stand] unless block ~ ~ ~ minecraft:brewing_stand run function simplenergy:custom_blocks/_groups/minecraft_brewing_stand
execute if score #total_vanilla_cauldron simplenergy.data matches 1.. if entity @s[tag=simplenergy.vanilla.minecraft_cauldron] unless block ~ ~ ~ #minecraft:cauldrons run function simplenergy:custom_blocks/_groups/minecraft_cauldron
execute if score #total_vanilla_copper_block simplenergy.data matches 1.. if entity @s[tag=simplenergy.vanilla.minecraft_copper_block] unless block ~ ~ ~ minecraft:copper_block run function simplenergy:custom_blocks/_groups/minecraft_copper_block
execute if score #total_vanilla_daylight_detector simplenergy.data matches 1.. if entity @s[tag=simplenergy.vanilla.minecraft_daylight_detector] unless block ~ ~ ~ minecraft:daylight_detector run function simplenergy:custom_blocks/_groups/minecraft_daylight_detector
execute if score #total_vanilla_furnace simplenergy.data matches 1.. if entity @s[tag=simplenergy.vanilla.minecraft_furnace] unless block ~ ~ ~ minecraft:furnace run function simplenergy:custom_blocks/_groups/minecraft_furnace
execute if score #total_vanilla_gold_block simplenergy.data matches 1.. if entity @s[tag=simplenergy.vanilla.minecraft_gold_block] unless block ~ ~ ~ minecraft:gold_block run function simplenergy:custom_blocks/_groups/minecraft_gold_block
execute if score #total_vanilla_iron_block simplenergy.data matches 1.. if entity @s[tag=simplenergy.vanilla.minecraft_iron_block] unless block ~ ~ ~ minecraft:iron_block run function simplenergy:custom_blocks/_groups/minecraft_iron_block
execute if score #total_vanilla_player_head simplenergy.data matches 1.. if entity @s[tag=simplenergy.vanilla.minecraft_player_head] unless block ~ ~ ~ minecraft:player_head run function simplenergy:custom_blocks/_groups/minecraft_player_head
execute if score #total_vanilla_polished_deepslate simplenergy.data matches 1.. if entity @s[tag=simplenergy.vanilla.minecraft_polished_deepslate] unless block ~ ~ ~ minecraft:polished_deepslate run function simplenergy:custom_blocks/_groups/minecraft_polished_deepslate
execute if score #total_vanilla_raw_iron_block simplenergy.data matches 1.. if entity @s[tag=simplenergy.vanilla.minecraft_raw_iron_block] unless block ~ ~ ~ minecraft:raw_iron_block run function simplenergy:custom_blocks/_groups/minecraft_raw_iron_block

