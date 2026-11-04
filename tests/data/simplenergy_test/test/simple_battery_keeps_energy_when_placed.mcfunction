# @template simplenergy_test:room
# @environment simplenergy_test:loaded
# @dummy ~ ~ ~
# @timeout 200
await score #simplenergy.loaded load.status matches 1

loot replace entity @s weapon.mainhand loot simplenergy:i/simple_battery
item modify entity @s weapon.mainhand {type:"minecraft:set_custom_data",tag:{energy:{storage:5000}}}
# A dummy places from inside a command, so the place reward runs after its last item is taken: keep one more
item modify entity @s weapon.mainhand {type:"minecraft:set_count",count:2}
dummy @s use block ~2 ~-1 ~2
execute positioned ~2.5 ~.5 ~2.5 run await entity @e[tag=simplenergy.simple_battery,distance=..0.5]
execute positioned ~2.5 ~.5 ~2.5 run assert entity @e[tag=simplenergy.simple_battery,distance=..0.5,scores={energy.storage=5000,energy.max_storage=10000}]
