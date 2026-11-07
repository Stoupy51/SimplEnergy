
#> simplenergy:v2.3.0/load/resolve
#
# @within	#simplenergy:resolve
#

# If correct version, load the datapack
execute if score #simplenergy.major load.status matches 2 if score #simplenergy.minor load.status matches 3 if score #simplenergy.patch load.status matches 0 run function simplenergy:v2.3.0/load/main

