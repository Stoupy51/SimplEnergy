
#> simplenergy:tick_2
#
# @within			simplenergy:tick
# @executed			default context
#
# @description		Function executed every 2 ticks
#

# Timer
scoreboard players set #tick_2 simplenergy.data 1

# Destroy detection
execute as @e[tag=simplenergy.destroyer,tag=!simplenergy.item_destroy,predicate=!simplenergy:check_destroyer] at @s run function simplenergy:destroy/all

# Passive multimeter
execute as @a[tag=!global.ignore.gui,tag=simplenergy.state.multimeter] at @s anchored eyes positioned ^ ^ ^.2 run function simplenergy:work/passive_multimeter/

