
# Launch function if item has simplenergy tag
execute if data storage energy:temp list[0].tag.simplenergy run function simplenergy:calls/update_energy_lore

