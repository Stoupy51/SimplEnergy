# @template simplenergy_test:room
# @environment simplenergy_test:loaded
# @dummy ~ ~ ~
# @timeout 200
await score #simplenergy.loaded load.status matches 1

# FurnaceNbtRecipes starts ticking furnaces two seconds after it loads, once this block is placed
await block -30000000 14 1610 minecraft:yellow_shulker_box
loot replace entity @s weapon.mainhand loot simplenergy:i/electric_smelter
item modify entity @s weapon.mainhand {type:"minecraft:set_count",count:2}
dummy @s use block ~1 ~-1 ~2
loot replace entity @s weapon.mainhand loot simplenergy:i/electric_furnace
item modify entity @s weapon.mainhand {type:"minecraft:set_count",count:2}
dummy @s use block ~3 ~-1 ~2
await delay 5
execute positioned ~1.5 ~.5 ~2.5 run assert entity @e[tag=simplenergy.electric_smelter,tag=furnace_nbt_recipes.furnace,distance=..0.5,scores={furnace_nbt_recipes.speed=8000}]
execute positioned ~3.5 ~.5 ~2.5 run assert entity @e[tag=simplenergy.electric_furnace,tag=furnace_nbt_recipes.furnace,distance=..0.5,scores={furnace_nbt_recipes.speed=1500}]
execute positioned ~1.5 ~.5 ~2.5 run assert not entity @e[type=marker,distance=..0.75]
execute positioned ~3.5 ~.5 ~2.5 run assert not entity @e[type=marker,distance=..0.75]
