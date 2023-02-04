
# Dimension score, 0 = overworld
scoreboard players set #dimension smart_ore_generation.data -1
execute if predicate simplenergy:in_overworld run scoreboard players set #dimension smart_ore_generation.data 0


# Generate Simplunium Ore (x4) in the overworld only
scoreboard players operation #min_height smart_ore_generation.data = _OVERWORLD_BOTTOM smart_ore_generation.data
scoreboard players set #max_height smart_ore_generation.data 40
execute if score #dimension smart_ore_generation.data matches 0 run function simplenergy:calls/smart_ore_generation/packs/simplunium_x4

