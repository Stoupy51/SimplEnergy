# @template simplenergy_test:room
# @environment simplenergy_test:loaded
# @dummy ~ ~ ~
# @timeout 200
await score #simplenergy.loaded load.status matches 1

loot replace entity @s weapon.mainhand loot simplenergy:i/pulverizer
item modify entity @s weapon.mainhand {type:"minecraft:set_count",count:2}
dummy @s use block ~2 ~-1 ~2
execute positioned ~2.5 ~.5 ~2.5 run await entity @e[tag=simplenergy.pulverizer,distance=..0.5,tag=simplenergy.pulverizer_unlocked_0]
execute positioned ~2.5 ~.5 ~2.5 as @n[tag=simplenergy.pulverizer,distance=..0.5] run function simplenergy_test:pulverizer_prepare_five_slots
item replace block ~2 ~ ~2 container.0 with minecraft:raw_iron
item replace block ~2 ~ ~2 container.1 with minecraft:raw_iron
item replace block ~2 ~ ~2 container.2 with minecraft:raw_gold
item replace block ~2 ~ ~2 container.3 with minecraft:stone
item replace block ~2 ~ ~2 container.4 with minecraft:raw_iron
execute positioned ~2.5 ~.5 ~2.5 run scoreboard players set @n[tag=simplenergy.pulverizer,distance=..0.5] energy.storage 6400

await items block ~2 ~ ~2 container.22 *
assert items block ~2 ~ ~2 container.18 *[minecraft:custom_data~{simplenergy:{iron_dust:true}}]
assert items block ~2 ~ ~2 container.19 *[minecraft:custom_data~{simplenergy:{iron_dust:true}}]
assert items block ~2 ~ ~2 container.20 *[minecraft:custom_data~{simplenergy:{gold_dust:true}}]
assert not items block ~2 ~ ~2 container.21 *
assert items block ~2 ~ ~2 container.22 *[minecraft:custom_data~{simplenergy:{iron_dust:true}}]
assert items block ~2 ~ ~2 container.3 minecraft:stone
