execute if entity @s[type=player] run function smithed:core/impl/v0_0_1/entity/damage/health/calculate_modifier
execute if score @s smd.damage >= $maximumHealth smd.damage run function smithed:core/impl/v0_0_1/entity/damage/on_death
execute if score @s smd.damage < $maximumHealth smd.damage run function smithed:core/impl/v0_0_1/entity/damage/health/update
scoreboard players reset @s smd.damage
