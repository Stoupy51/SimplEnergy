# @template simplenergy_test:room
# @environment simplenergy_test:loaded
# @dummy ~ ~ ~
# @timeout 200
await score #simplenergy.loaded load.status matches 1

loot replace entity @s weapon.mainhand loot simplenergy:i/pulverizer
item modify entity @s weapon.mainhand {type:"minecraft:set_count",count:2}
dummy @s use block ~2 ~-1 ~2
execute positioned ~2.5 ~.5 ~2.5 run await entity @e[tag=simplenergy.pulverizer,distance=..0.5,tag=simplenergy.pulverizer_unlocked_0]
item replace block ~2 ~ ~2 container.18 with minecraft:stone
item replace block ~2 ~ ~2 container.0 with minecraft:raw_iron
execute positioned ~2.5 ~.5 ~2.5 run scoreboard players set @n[tag=simplenergy.pulverizer,distance=..0.5] energy.storage 6400
execute positioned ~2.5 ~.5 ~2.5 run scoreboard players set @n[tag=simplenergy.pulverizer,distance=..0.5] simplenergy.pulverizer_progress_0 190

await delay 30
execute positioned ~2.5 ~.5 ~2.5 run assert entity @e[tag=simplenergy.pulverizer,distance=..0.5,scores={energy.storage=6400}]
assert data block ~2 ~ ~2 Items[{Slot:18b,id:"minecraft:stone",count:1}]
assert items block ~2 ~ ~2 container.0 minecraft:raw_iron
