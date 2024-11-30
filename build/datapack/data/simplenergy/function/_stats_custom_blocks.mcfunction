
#> simplenergy:_stats_custom_blocks
#
# @within	???
#

scoreboard players add #tick_entities simplenergy.data 0
scoreboard players add #second_entities simplenergy.data 0
tellraw @s [{"translate":"simplenergy.second_tag_function","color":"green"},{"score":{"name":"#second_entities","objective":"simplenergy.data"},"color":"dark_green"}]
tellraw @s [{"translate":"simplenergy.tick_tag_function","color":"green"},{"score":{"name":"#tick_entities","objective":"simplenergy.data"},"color":"dark_green"}]

