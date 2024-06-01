
# Launch function if item has simplenergy tag
execute if data storage energy:temp list[0].components."minecraft:custom_data".simplenergy run function simplenergy:calls/update_energy_lore

