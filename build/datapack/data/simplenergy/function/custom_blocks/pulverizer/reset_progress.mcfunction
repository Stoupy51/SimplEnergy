
#> simplenergy:custom_blocks/pulverizer/reset_progress
#
# @executed	as @e[tag=simplenergy.tick] & at @s
#
# @within	simplenergy:custom_blocks/pulverizer/gui_active_slot {"index":$(index),"slot":$(slot)}
#
# @args		index (int)
#			slot (int)
#

scoreboard players set #progression simplenergy.data 0
$data modify storage simplenergy:temp slots[$(index)].progression set value 0
$function simplenergy:custom_blocks/pulverizer/gui_progression {"index":$(index),"slot":$(slot)}
return fail

