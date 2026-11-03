
#> simplenergy:custom_blocks/pulverizer/get_pulverizer_recipe
#
# @executed	as @e[tag=simplenergy.tick] & at @s
#
# @within	simplenergy:custom_blocks/pulverizer/gui_active_slot
#

scoreboard players set #found simplenergy.data 0
execute as 88c74f57-e693-5c1c-b41f-8b268af30ed5 run function #simplenergy:calls/pulverizer_recipes
execute if score #found simplenergy.data matches 1 run data modify storage simplenergy:main pulverizer.output set from entity 88c74f57-e693-5c1c-b41f-8b268af30ed5 item

