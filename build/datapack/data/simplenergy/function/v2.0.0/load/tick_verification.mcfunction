
#> simplenergy:v2.0.0/load/tick_verification
#
# @within	#minecraft:tick
#

execute if score #simplenergy.major load.status matches 2 if score #simplenergy.minor load.status matches 0 if score #simplenergy.patch load.status matches 0 run function simplenergy:v2.0.0/tick

