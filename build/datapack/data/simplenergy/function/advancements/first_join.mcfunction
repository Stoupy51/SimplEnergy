
#> simplenergy:advancements/first_join
#
# @executed	as the player & at current position
#
# @within	advancement simplenergy:technical/first_join
#

execute unless score #simplenergy.loaded load.status matches 1 run advancement revoke @s only simplenergy:first_join
execute if score #simplenergy.loaded load.status matches 1 run loot give @s loot simplenergy:i/manual

