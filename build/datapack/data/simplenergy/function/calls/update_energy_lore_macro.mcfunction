
#> simplenergy:calls/update_energy_lore_macro
#
# @within	simplenergy:calls/update_energy_lore with storage simplenergy:temp macro
#

$data modify block -30000000 14 1610 Items[0].components."minecraft:lore" set value ['[{"translate":"simplenergy.charge","color":"gray","italic":false},"$(part_1).$(part_2)$(scale)"]']

