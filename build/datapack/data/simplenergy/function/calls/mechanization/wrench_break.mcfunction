
#> simplenergy:calls/mechanization/wrench_break
#
# @within	#mechanization:wrench_break
#

# When using Mechanization's wrench
execute if entity @s[tag=simplenergy.custom_block] run setblock ~ ~ ~ air destroy
execute if entity @s[tag=simplenergy.custom_block] run function simplenergy:destroy/all

