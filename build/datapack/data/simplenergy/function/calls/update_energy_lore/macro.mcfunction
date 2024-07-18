
#> simplenergy:calls/update_energy_lore/macro
#
# @within	simplenergy:calls/update_energy_lore/main with storage simplenergy:temp macro
#

$execute unless data storage energy:temp list[0].components."minecraft:custom_data".energy.has_storage_lore run data modify storage energy:temp list[0].components."minecraft:lore" insert -2 value '[{"translate":"simplenergy.charge","color":"gray","italic":false},"$(part_1).$(part_2)$(scale)"]'
$execute if data storage energy:temp list[0].components."minecraft:custom_data".energy.has_storage_lore run data modify storage energy:temp list[0].components."minecraft:lore"[-2] set value '[{"translate":"simplenergy.charge","color":"gray","italic":false},"$(part_1).$(part_2)$(scale)"]'

