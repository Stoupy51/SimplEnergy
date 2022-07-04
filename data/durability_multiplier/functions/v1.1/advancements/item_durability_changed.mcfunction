
advancement revoke @s only durability_multiplier:v1.1/item_durability_changed
execute if entity @s[tag=!durability_multiplier.durability_changed] run function durability_multiplier:v1.1/advancements/update_scores
