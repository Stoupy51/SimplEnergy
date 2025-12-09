
#> simplenergy:v2.0.15/load/enumerate
#
# @within	#simplenergy:enumerate
#

# If current major is too low, set it to the current major
execute unless score #simplenergy.major load.status matches 2.. run scoreboard players set #simplenergy.major load.status 2

# If current minor is too low, set it to the current minor (only if major is correct)
execute if score #simplenergy.major load.status matches 2 unless score #simplenergy.minor load.status matches 0.. run scoreboard players set #simplenergy.minor load.status 0

# If current patch is too low, set it to the current patch (only if major and minor are correct)
execute if score #simplenergy.major load.status matches 2 if score #simplenergy.minor load.status matches 0 unless score #simplenergy.patch load.status matches 15.. run scoreboard players set #simplenergy.patch load.status 15

