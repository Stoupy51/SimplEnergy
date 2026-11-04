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
execute positioned ~1.5 ~.5 ~2.5 run scoreboard players set @n[tag=simplenergy.electric_smelter,distance=..0.5] energy.storage 8000
execute positioned ~3.5 ~.5 ~2.5 run scoreboard players set @n[tag=simplenergy.electric_furnace,distance=..0.5] energy.storage 1600
item replace block ~1 ~ ~2 container.0 with minecraft:raw_iron
item replace block ~3 ~ ~2 container.0 with minecraft:raw_iron

await delay 50
assert items block ~1 ~ ~2 container.2 minecraft:iron_ingot
assert not items block ~3 ~ ~2 container.2 *
await delay 110
assert items block ~3 ~ ~2 container.2 minecraft:iron_ingot
