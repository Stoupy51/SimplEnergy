
scoreboard players set #success simplenergy.data 0
execute store success score #success simplenergy.data if entity @s[y_rotation=-46..45] run setblock ~ ~ ~ furnace[facing=north]
execute if score #success simplenergy.data matches 0 store success score #success simplenergy.data if entity @s[y_rotation=45..135] run setblock ~ ~ ~ furnace[facing=east]
execute if score #success simplenergy.data matches 0 store success score #success simplenergy.data if entity @s[y_rotation=135..225] run setblock ~ ~ ~ furnace[facing=south]
execute if score #success simplenergy.data matches 0 store success score #success simplenergy.data if entity @s[y_rotation=225..315] run setblock ~ ~ ~ furnace[facing=west]

execute align xyz positioned ~.5 ~.5 ~.5 summon item_display at @s run function simplenergy:place/furnace_generator/secondary

