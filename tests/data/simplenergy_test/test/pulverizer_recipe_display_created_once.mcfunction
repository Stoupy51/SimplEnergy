# @template simplenergy_test:room
# @environment simplenergy_test:reload
# @timeout 100
await score #simplenergy.loaded load.status matches 1

execute positioned -30000000 0 1600 store result score #displays simplenergy_test.data if entity @e[type=item_display,distance=..1]
assert score #displays simplenergy_test.data matches 1

scoreboard players reset #simplenergy.loaded load.status
function #simplenergy:load
await score #simplenergy.loaded load.status matches 1
execute positioned -30000000 0 1600 store result score #displays simplenergy_test.data if entity @e[type=item_display,distance=..1]
assert score #displays simplenergy_test.data matches 1
