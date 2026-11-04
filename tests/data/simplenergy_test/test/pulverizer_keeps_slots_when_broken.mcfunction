# @template simplenergy_test:room
# @environment simplenergy_test:loaded
# @dummy ~ ~ ~
# @timeout 200
await score #simplenergy.loaded load.status matches 1

loot replace entity @s weapon.mainhand loot simplenergy:i/pulverizer
item modify entity @s weapon.mainhand {type:"minecraft:set_count",count:2}
dummy @s use block ~2 ~-1 ~2
execute positioned ~2.5 ~.5 ~2.5 run await entity @e[tag=simplenergy.pulverizer,distance=..0.5,tag=simplenergy.pulverizer_unlocked_0]
execute positioned ~2.5 ~.5 ~2.5 run tag @n[tag=simplenergy.pulverizer,distance=..0.5] add simplenergy.pulverizer_unlocked_3
execute positioned ~2.5 ~.5 ~2.5 run scoreboard players set @n[tag=simplenergy.pulverizer,distance=..0.5] simplenergy.pulverizer_progress_3 77

dummy @s mine ~2 ~ ~2
execute positioned ~2.5 ~.5 ~2.5 run await entity @n[type=item,distance=..2,nbt={Item:{components:{"minecraft:custom_data":{simplenergy:{pulverizer:true}}}}}]
execute positioned ~2.5 ~.5 ~2.5 run item replace entity @s weapon.mainhand from entity @n[type=item,distance=..2,nbt={Item:{components:{"minecraft:custom_data":{simplenergy:{pulverizer:true}}}}}] contents
item modify entity @s weapon.mainhand {type:"minecraft:set_count",count:2}
execute positioned ~2.5 ~.5 ~2.5 run kill @e[type=item,distance=..2]
assert items entity @s weapon.mainhand *[minecraft:custom_data~{simplenergy:{pulverizer_slots:[{progression:77}]}}]

dummy @s use block ~2 ~-1 ~2
execute positioned ~2.5 ~.5 ~2.5 run await entity @e[tag=simplenergy.pulverizer,distance=..0.5,tag=simplenergy.pulverizer_unlocked_3]
execute positioned ~2.5 ~.5 ~2.5 run assert not entity @e[tag=simplenergy.pulverizer,distance=..0.5,tag=simplenergy.pulverizer_unlocked_2]
execute positioned ~2.5 ~.5 ~2.5 run assert entity @e[tag=simplenergy.pulverizer,distance=..0.5,scores={simplenergy.pulverizer_progress_3=77}]
