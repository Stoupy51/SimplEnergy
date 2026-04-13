
#> simplenergy:calls/mechanization/wrench_break
#
# @within	#mechanization:wrench_break
#

execute if entity @s[tag=simplenergy.custom_block] run setblock ~ ~ ~ air destroy
execute if entity @s[tag=simplenergy.custom_block] run function simplenergy:custom_blocks/destroy

