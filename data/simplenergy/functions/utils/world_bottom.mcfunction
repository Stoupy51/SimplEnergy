
scoreboard players remove #world_bottom simplenergy.data 1
execute positioned 0 ~-1 0 if predicate simplenergy:check_world_bottom if score #world_bottom simplenergy.data matches -100000.. run function simplenergy:utils/world_bottom
