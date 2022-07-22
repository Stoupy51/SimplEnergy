
advancement revoke @s only durability_multiplier:v1.2/item_durability_changed
execute if score DurabilityMultiplier load.status matches 12 if entity @s[tag=!durability_multiplier.durability_changed] run function durability_multiplier:v1.2/advancements/update_scores
