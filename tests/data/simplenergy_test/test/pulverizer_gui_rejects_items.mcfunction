# @template simplenergy_test:room
# @environment simplenergy_test:loaded
# @dummy ~ ~ ~
# @timeout 200
await score #simplenergy.loaded load.status matches 1

loot replace entity @s weapon.mainhand loot simplenergy:i/pulverizer
item modify entity @s weapon.mainhand {type:"minecraft:set_count",count:2}
dummy @s use block ~2 ~-1 ~2
execute positioned ~2.5 ~.5 ~2.5 run await entity @e[tag=simplenergy.pulverizer,distance=..0.5,tag=simplenergy.pulverizer_unlocked_0]
item replace block ~2 ~ ~2 container.11 with minecraft:stone
item replace block ~2 ~ ~2 container.26 with minecraft:dirt
loot replace block ~2 ~ ~2 container.9 loot simplenergy:i/slot_unlocker
item modify block ~2 ~ ~2 container.9 {type:"minecraft:set_count",count:2}

execute positioned ~2.5 ~.5 ~2.5 run await entity @e[type=item,distance=..2,nbt={Item:{id:"minecraft:stone"}}]
execute positioned ~2.5 ~.5 ~2.5 run await entity @e[type=item,distance=..2,nbt={Item:{id:"minecraft:dirt"}}]
execute positioned ~2.5 ~.5 ~2.5 run await entity @e[type=item,distance=..2,nbt={Item:{count:2,components:{"minecraft:custom_data":{simplenergy:{slot_unlocker:true}}}}}]
execute positioned ~2.5 ~.5 ~2.5 run assert not entity @e[tag=simplenergy.pulverizer,distance=..0.5,tag=simplenergy.pulverizer_unlocked_2]
assert items block ~2 ~ ~2 container.9 *[minecraft:custom_data~{common_signals:{temp:true}}]
assert items block ~2 ~ ~2 container.11 *[minecraft:custom_data~{common_signals:{temp:true}}]
assert items block ~2 ~ ~2 container.26 *[minecraft:custom_data~{common_signals:{temp:true}}]
