# @template simplenergy_test:room
# @environment simplenergy_test:loaded
# @dummy ~ ~ ~
# @timeout 200
await score #simplenergy.loaded load.status matches 1

loot replace entity @s weapon.mainhand loot simplenergy:i/pulverizer
item modify entity @s weapon.mainhand {type:"minecraft:set_count",count:2}
dummy @s use block ~2 ~-1 ~2
execute positioned ~2.5 ~.5 ~2.5 run await entity @e[tag=simplenergy.pulverizer,distance=..0.5,tag=simplenergy.pulverizer_unlocked_0]
execute positioned ~2.5 ~.5 ~2.5 run data modify entity @n[tag=simplenergy.pulverizer,distance=..0.5] item.components."minecraft:custom_data".simplenergy.pulverizer_slots set value [{progression:120},{},{blocked:true},{progression:30},{blocked:true},{blocked:true},{blocked:true},{blocked:true}]
execute positioned ~2.5 ~.5 ~2.5 as @n[tag=simplenergy.pulverizer,distance=..0.5] run function simplenergy_test:pulverizer_forget_slots

execute positioned ~2.5 ~.5 ~2.5 run await entity @e[tag=simplenergy.pulverizer,distance=..0.5,tag=simplenergy.pulverizer_unlocked_0]
execute positioned ~2.5 ~.5 ~2.5 run assert entity @e[tag=simplenergy.pulverizer,distance=..0.5,tag=simplenergy.pulverizer_unlocked_1,tag=simplenergy.pulverizer_unlocked_3]
execute positioned ~2.5 ~.5 ~2.5 run assert not entity @e[tag=simplenergy.pulverizer,distance=..0.5,tag=simplenergy.pulverizer_unlocked_2]
execute positioned ~2.5 ~.5 ~2.5 run assert not entity @e[tag=simplenergy.pulverizer,distance=..0.5,tag=simplenergy.pulverizer_unlocked_4]
execute positioned ~2.5 ~.5 ~2.5 run assert entity @e[tag=simplenergy.pulverizer,distance=..0.5,scores={simplenergy.pulverizer_progress_0=120,simplenergy.pulverizer_progress_3=30}]
