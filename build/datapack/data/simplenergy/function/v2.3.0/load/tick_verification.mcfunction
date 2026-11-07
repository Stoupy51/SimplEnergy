
#> simplenergy:v2.3.0/load/tick_verification
#
# @within	#minecraft:tick
#

execute if score #simplenergy.major load.status matches 2 if score #simplenergy.minor load.status matches 3 if score #simplenergy.patch load.status matches 0 run function simplenergy:v2.3.0/tick

