
##Called by function tag #simplenergy:destroy_check
##It is run as & at an item with the nbt {simplenergy:{destroy_check:1b}}
##Usually dropped by polished_deepslate's loot table.
##Working with silk_touch and fortune enchantments.
##You can check these following scores for your functions (do not override them):
##scoreboard players get #is_silk_touch simplenergy.data
##scoreboard players get #item_count simplenergy.data

execute as @e[tag=simplenergy.destroyer,dx=0,dy=0,dz=0] at @s run function simplenergy:destroy/all
