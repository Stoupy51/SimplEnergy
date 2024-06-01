
# Loop every second on custom entities
execute as @e[type=item_display,tag=simplenergy.destroyer,tag=!simplenergy.vanilla.minecraft_polished_deepslate,sort=random] at @s run function simplenergy:utils/tick_second_entities

# Loop every second on players
execute as @a[sort=random] at @s run function simplenergy:utils/tick_second_players

