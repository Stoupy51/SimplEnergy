
#> simplenergy:load/tick_verification
#
# @within	#minecraft:tick
#

execute if score #simplenergy.loaded load.status matches 1 run function simplenergy:tick

