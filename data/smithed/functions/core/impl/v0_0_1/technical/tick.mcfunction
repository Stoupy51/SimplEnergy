execute as @a at @s run function smithed:core/impl/v0_0_1/player/tick

execute as @e[type=#smithed:core/ticking] at @s run function smithed:core/impl/v0_0_1/technical/entity_tick

schedule function smithed:core/impl/v0_0_1/technical/tick 1t replace