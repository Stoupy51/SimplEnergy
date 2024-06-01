
# Tick entities
execute as @e[type=item_display,tag=simplenergy.tick_entities,sort=random] at @s run function simplenergy:utils/tick_entities

# Check for new items
execute as @e[type=item,tag=!simplenergy.checked] at @s run function simplenergy:destroy/item_check/

