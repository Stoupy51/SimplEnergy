
#> simplenergy:calls/update_energy_lore/macro
#
# @executed	as @n[type=item,nbt={Item:{id:"minecraft:waxed_copper_block"}},distance=..1]
#
# @within	simplenergy:calls/update_energy_lore/main with storage simplenergy:temp macro
#
# @args		part_1 (int)
#			part_2 (int)
#			scale (string)
#

$execute unless data storage energy:temp list[0].components."minecraft:custom_data".energy.has_storage_lore run data modify storage energy:temp list[0].components."minecraft:lore" insert -2 value [{"translate": "simplenergy.charge","color":"gray","italic":false},"$(part_1).$(part_2)$(scale)"]
$execute if data storage energy:temp list[0].components."minecraft:custom_data".energy.has_storage_lore run data modify storage energy:temp list[0].components."minecraft:lore"[-2] set value [{"translate": "simplenergy.charge","color":"gray","italic":false},"$(part_1).$(part_2)$(scale)"]

