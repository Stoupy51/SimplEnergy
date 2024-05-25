
#> simplenergy:custom_blocks/destroy
#
# @within	simplenergy:tick_2
#			simplenergy:second
#			simplenergy:second_5
#			simplenergy:calls/common_signals/on_ore_destroyed
#

execute if entity @s[tag=simplenergy.vanilla.minecraft_brewing_stand] unless block ~ ~ ~ minecraft:brewing_stand run function simplenergy:custom_blocks/_groups/minecraft_brewing_stand
execute if entity @s[tag=simplenergy.vanilla.minecraft_cauldron] unless block ~ ~ ~ minecraft:cauldron run function simplenergy:custom_blocks/_groups/minecraft_cauldron
execute if entity @s[tag=simplenergy.vanilla.minecraft_copper_block] unless block ~ ~ ~ minecraft:copper_block run function simplenergy:custom_blocks/_groups/minecraft_copper_block
execute if entity @s[tag=simplenergy.vanilla.minecraft_daylight_detector] unless block ~ ~ ~ minecraft:daylight_detector run function simplenergy:custom_blocks/_groups/minecraft_daylight_detector
execute if entity @s[tag=simplenergy.vanilla.minecraft_furnace] unless block ~ ~ ~ minecraft:furnace run function simplenergy:custom_blocks/_groups/minecraft_furnace
execute if entity @s[tag=simplenergy.vanilla.minecraft_gold_block] unless block ~ ~ ~ minecraft:gold_block run function simplenergy:custom_blocks/_groups/minecraft_gold_block
execute if entity @s[tag=simplenergy.vanilla.minecraft_iron_block] unless block ~ ~ ~ minecraft:iron_block run function simplenergy:custom_blocks/_groups/minecraft_iron_block
execute if entity @s[tag=simplenergy.vanilla.minecraft_player_head] unless block ~ ~ ~ minecraft:player_head run function simplenergy:custom_blocks/_groups/minecraft_player_head
execute if entity @s[tag=simplenergy.vanilla.minecraft_polished_deepslate] unless block ~ ~ ~ minecraft:polished_deepslate run function simplenergy:custom_blocks/_groups/minecraft_polished_deepslate
execute if entity @s[tag=simplenergy.vanilla.minecraft_raw_iron_block] unless block ~ ~ ~ minecraft:raw_iron_block run function simplenergy:custom_blocks/_groups/minecraft_raw_iron_block

