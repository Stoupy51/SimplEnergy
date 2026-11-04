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
item replace block ~1 ~ ~2 container.2 with minecraft:iron_ingot 64
item replace block ~1 ~ ~2 container.0 with minecraft:raw_iron
loot replace entity @s hotbar.8 loot simplenergy:i/simplunium_ingot
item replace block ~3 ~ ~2 container.2 from entity @s hotbar.8
item modify block ~3 ~ ~2 container.2 {type:"minecraft:set_count",count:64}
loot replace block ~3 ~ ~2 container.0 loot simplenergy:i/raw_simplunium
execute positioned ~1.5 ~.5 ~2.5 run scoreboard players set @n[tag=simplenergy.electric_smelter,distance=..0.5] energy.storage 8000
execute positioned ~3.5 ~.5 ~2.5 run scoreboard players set @n[tag=simplenergy.electric_furnace,distance=..0.5] energy.storage 1600

await delay 60
execute positioned ~1.5 ~.5 ~2.5 run assert entity @e[tag=simplenergy.electric_smelter,distance=..0.5,scores={energy.storage=8000}]
execute positioned ~3.5 ~.5 ~2.5 run assert entity @e[tag=simplenergy.electric_furnace,distance=..0.5,scores={energy.storage=1600}]
execute positioned ~1.5 ~.5 ~2.5 run assert items entity @n[tag=simplenergy.electric_smelter,distance=..0.5] contents *[minecraft:item_model="simplenergy:electric_smelter"]
execute positioned ~3.5 ~.5 ~2.5 run assert items entity @n[tag=simplenergy.electric_furnace,distance=..0.5] contents *[minecraft:item_model="simplenergy:electric_furnace"]
assert items block ~1 ~ ~2 container.0 minecraft:raw_iron
assert items block ~3 ~ ~2 container.0 *[minecraft:custom_data~{simplenergy:{raw_simplunium:true}}]
assert data block ~1 ~ ~2 Items[{Slot:2b,count:64}]
assert data block ~3 ~ ~2 Items[{Slot:2b,count:64}]
