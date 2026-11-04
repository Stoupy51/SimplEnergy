# @template simplenergy_test:room
# @environment simplenergy_test:loaded
# @dummy ~ ~ ~
# @timeout 200
await score #simplenergy.loaded load.status matches 1

loot replace entity @s weapon.mainhand loot simplenergy:i/pulverizer
item modify entity @s weapon.mainhand {type:"minecraft:set_count",count:2}
dummy @s use block ~2 ~-1 ~2
execute positioned ~2.5 ~.5 ~2.5 run await entity @e[tag=simplenergy.pulverizer,distance=..0.5,tag=simplenergy.pulverizer_unlocked_0]
loot replace block ~2 ~ ~2 container.18 loot simplenergy:i/iron_dust
item modify block ~2 ~ ~2 container.18 {type:"minecraft:set_count",count:64}
item replace block ~2 ~ ~2 container.0 with minecraft:raw_iron
execute positioned ~2.5 ~.5 ~2.5 run scoreboard players set @n[tag=simplenergy.pulverizer,distance=..0.5] energy.storage 6400
execute positioned ~2.5 ~.5 ~2.5 run scoreboard players set @n[tag=simplenergy.pulverizer,distance=..0.5] simplenergy.pulverizer_progress_0 190

await delay 30
execute positioned ~2.5 ~.5 ~2.5 run assert entity @e[tag=simplenergy.pulverizer,distance=..0.5,scores={energy.storage=6400,simplenergy.pulverizer_progress_0=0}]
execute positioned ~2.5 ~.5 ~2.5 run assert items entity @n[tag=simplenergy.pulverizer,distance=..0.5] contents *[minecraft:item_model="simplenergy:pulverizer"]
assert data block ~2 ~ ~2 Items[{Slot:18b,count:64}]
assert data block ~2 ~ ~2 Items[{Slot:0b,id:"minecraft:raw_iron",count:1}]
