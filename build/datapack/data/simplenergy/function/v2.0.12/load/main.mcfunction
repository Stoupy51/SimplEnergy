
#> simplenergy:v2.0.12/load/main
#
# @within	simplenergy:v2.0.12/load/resolve
#

# Avoiding multiple executions of the same load function
execute unless score #simplenergy.loaded load.status matches 1 run function simplenergy:v2.0.12/load/secondary

