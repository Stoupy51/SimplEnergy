# @template simplenergy_test:room
# @environment simplenergy_test:loaded
# @dummy ~ ~ ~
# @timeout 200
await score #simplenergy.loaded load.status matches 1

loot replace entity @s weapon.mainhand loot simplenergy:i/simple_battery
item modify entity @s weapon.mainhand {type:"minecraft:set_count",count:2}
dummy @s use block ~2 ~-1 ~2
tp @s ~.5 ~ ~.5 -45 22
loot replace entity @s weapon.offhand loot simplenergy:i/multimeter
dummy @s use
await chat "Energy stored" @s
