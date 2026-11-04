# @template simplenergy_test:room
# @environment simplenergy_test:loaded
# @dummy ~ ~ ~
# @timeout 200
await score #simplenergy.loaded load.status matches 1

# FurnaceNbtRecipes starts ticking furnaces two seconds after it loads, once this block is placed
await block -30000000 14 1610 minecraft:yellow_shulker_box
loot replace entity @s weapon.mainhand loot simplenergy:i/electric_smelter
item modify entity @s weapon.mainhand {type:"minecraft:set_count",count:2}
dummy @s use block ~2 ~-1 ~2
execute positioned ~2.5 ~.5 ~2.5 run scoreboard players set @n[tag=simplenergy.electric_smelter,distance=..0.5] energy.storage 8000
loot replace block ~2 ~ ~2 container.0 loot simplenergy:i/raw_simplunium
item modify block ~2 ~ ~2 container.0 {type:"minecraft:set_count",count:3}

await delay 10
execute positioned ~2.5 ~.5 ~2.5 run assert items entity @n[tag=simplenergy.electric_smelter,distance=..0.5] contents *[minecraft:item_model="simplenergy:electric_smelter_on"]
execute positioned ~2.5 ~.5 ~2.5 run assert entity @e[tag=simplenergy.electric_smelter,distance=..0.5,scores={energy.storage=..7999}]

await items block ~2 ~ ~2 container.2 *[minecraft:custom_data~{simplenergy:{simplunium_ingot:true}}]
execute positioned ~2.5 ~.5 ~2.5 run scoreboard players operation #energy simplenergy_test.data = @n[tag=simplenergy.electric_smelter,distance=..0.5] energy.storage
await delay 5
execute positioned ~2.5 ~.5 ~2.5 run assert items entity @n[tag=simplenergy.electric_smelter,distance=..0.5] contents *[minecraft:item_model="simplenergy:electric_smelter_on"]
execute positioned ~2.5 ~.5 ~2.5 run assert score @n[tag=simplenergy.electric_smelter,distance=..0.5] energy.storage < #energy simplenergy_test.data
await data block ~2 ~ ~2 Items[{Slot:2b,count:3}]
