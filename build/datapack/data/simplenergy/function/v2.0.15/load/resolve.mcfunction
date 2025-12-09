
#> simplenergy:v2.0.15/load/resolve
#
# @within	#simplenergy:resolve
#

# If correct version, load the datapack
execute if score #simplenergy.major load.status matches 2 if score #simplenergy.minor load.status matches 0 if score #simplenergy.patch load.status matches 15 run function simplenergy:v2.0.15/load/main

