
#> simplenergy:v2.4.2/load/resolve
#
# @within	#simplenergy:resolve
#

# If correct version, load the datapack
execute if score #simplenergy.major load.status matches 2 if score #simplenergy.minor load.status matches 4 if score #simplenergy.patch load.status matches 2 run function simplenergy:v2.4.2/load/main

