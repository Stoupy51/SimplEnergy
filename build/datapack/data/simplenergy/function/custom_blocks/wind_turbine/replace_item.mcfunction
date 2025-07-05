
#> simplenergy:custom_blocks/wind_turbine/replace_item
#
# @within	simplenergy:custom_blocks/wind_turbine/destroy
#

data modify entity @s Item.components set from storage simplenergy:items all.wind_turbine.components
data modify entity @s Item.id set from storage simplenergy:items all.wind_turbine.id

