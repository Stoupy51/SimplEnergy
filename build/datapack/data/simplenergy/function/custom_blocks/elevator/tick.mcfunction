
#> simplenergy:custom_blocks/elevator/tick
#
# @executed	as @e[tag=simplenergy.tick] & at @s
#
# @within	simplenergy:custom_blocks/tick
#

# If not enough energy, update model and stop
execute unless score @s energy.storage matches 20.. run return run data modify entity @s item.components."minecraft:item_model" set value "simplenergy:elevator"
data modify entity @s item.components."minecraft:item_model" set value "simplenergy:elevator_on"

# Consume energy (20 per second)
scoreboard players remove @s energy.storage 1

# Check if a player is on top of the elevator (cooldown)
execute positioned ~ ~1 ~ as @a[distance=..1,dx=0,dz=0] run function simplenergy:custom_blocks/elevator/as_player

