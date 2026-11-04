# @template simplenergy_test:room
# @environment simplenergy_test:loaded
# @dummy ~ ~ ~
# @timeout 200
await score #simplenergy.loaded load.status matches 1

loot replace entity @s weapon.mainhand loot simplenergy:i/simple_battery
item modify entity @s weapon.mainhand {type:"minecraft:set_count",count:2}
dummy @s use block ~2 ~-1 ~2
tp @s ~.5 ~ ~.5 -45 22
execute positioned ~2.5 ~.5 ~2.5 run assert entity @e[tag=simplenergy.simple_battery,distance=..0.5,tag=energy.send,tag=energy.receive]
loot replace entity @s weapon.offhand loot simplenergy:i/battery_switcher
dummy @s use
execute positioned ~2.5 ~.5 ~2.5 run await entity @e[tag=simplenergy.simple_battery,distance=..0.5,tag=energy.send,tag=!energy.receive]
