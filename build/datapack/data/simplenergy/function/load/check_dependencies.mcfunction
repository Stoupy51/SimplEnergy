
#> simplenergy:load/check_dependencies
#
# @within	simplenergy:load/secondary
#

## Check if SimplEnergy is loadable (dependencies)
scoreboard players set #dependency_error simplenergy.data 0
execute if score #dependency_error simplenergy.data matches 0 unless score #common_signals.major load.status matches 0.. unless score #common_signals.patch load.status matches 2.. run scoreboard players set #dependency_error simplenergy.data 1
execute if score #dependency_error simplenergy.data matches 0 unless score #smithed.custom_block.major load.status matches 0.. unless score #smithed.custom_block.minor load.status matches 3.. run scoreboard players set #dependency_error simplenergy.data 1
execute if score #dependency_error simplenergy.data matches 0 unless score #energy.major load.status matches 1.. unless score #energy.minor load.status matches 8.. run scoreboard players set #dependency_error simplenergy.data 1

