# @template simplenergy_test:room
# @environment simplenergy_test:loaded
# @dummy ~ ~ ~
# @timeout 200
await score #simplenergy.loaded load.status matches 1

loot replace entity @s weapon.mainhand loot simplenergy:i/pulverizer
item modify entity @s weapon.mainhand {type:"minecraft:set_count",count:2}
dummy @s use block ~2 ~-1 ~2
execute positioned ~2.5 ~.5 ~2.5 run await entity @e[tag=simplenergy.pulverizer,distance=..0.5,tag=simplenergy.pulverizer_unlocked_0]
loot replace block ~2 ~ ~2 container.10 loot simplenergy:i/slot_unlocker
item modify block ~2 ~ ~2 container.10 {type:"minecraft:set_count",count:2}

execute positioned ~2.5 ~.5 ~2.5 run await entity @e[tag=simplenergy.pulverizer,distance=..0.5,tag=simplenergy.pulverizer_unlocked_1]
execute positioned ~2.5 ~.5 ~2.5 run assert not entity @e[tag=simplenergy.pulverizer,distance=..0.5,tag=simplenergy.pulverizer_unlocked_2]
execute positioned ~2.5 ~.5 ~2.5 run assert entity @e[type=item,distance=..2,nbt={Item:{count:1,components:{"minecraft:custom_data":{simplenergy:{slot_unlocker:true}}}}}]
assert items block ~2 ~ ~2 container.10 *[minecraft:custom_data~{common_signals:{temp:true}}]
