
#> simplenergy:calls/smart_ore_generation/generate_ores
#
# @within	#smart_ore_generation:v1/signals/generate_ores
#

# Generate Simplunium Ore (x0.5)
scoreboard players set #dimension smart_ore_generation.data -1
execute if dimension minecraft:overworld run scoreboard players set #dimension smart_ore_generation.data 0
execute if dimension stardust:cavern run scoreboard players set #dimension smart_ore_generation.data 1
execute if dimension stardust:celestial run scoreboard players set #dimension smart_ore_generation.data 2
scoreboard players set #min_height smart_ore_generation.data 0
scoreboard players set #max_height smart_ore_generation.data 50
execute if score #dimension smart_ore_generation.data matches 0.. if predicate {condition:"minecraft:random_chance",chance:0.50000} run function simplenergy:calls/smart_ore_generation/veins/simplunium_ore

# Generate Deepslate Simplunium Ore (x0.5)
scoreboard players set #dimension smart_ore_generation.data -1
execute if dimension minecraft:overworld run scoreboard players set #dimension smart_ore_generation.data 0
execute if dimension stardust:cavern run scoreboard players set #dimension smart_ore_generation.data 1
execute if dimension stardust:celestial run scoreboard players set #dimension smart_ore_generation.data 2
scoreboard players operation #min_height smart_ore_generation.data = _OVERWORLD_BOTTOM smart_ore_generation.data
scoreboard players set #max_height smart_ore_generation.data 0
execute if score #dimension smart_ore_generation.data matches 0.. if predicate {condition:"minecraft:random_chance",chance:0.50000} run function simplenergy:calls/smart_ore_generation/veins/deepslate_simplunium_ore

