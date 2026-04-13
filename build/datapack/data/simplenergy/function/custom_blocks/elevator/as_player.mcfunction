
#> simplenergy:custom_blocks/elevator/as_player
#
# @executed	positioned ~ ~1 ~ & as @a[distance=..1,dx=0,dz=0]
#
# @within	simplenergy:custom_blocks/elevator/tick [ positioned ~ ~1 ~ & as @a[distance=..1,dx=0,dz=0] ]
#

# Compute the time difference between the player and the elevator, and stop if too high (5 ticks)
scoreboard players operation #temp simplenergy.data = @s simplenergy.elevator_time
scoreboard players operation #temp simplenergy.data -= #elevator_time simplenergy.data
execute if score #temp simplenergy.data matches -10.. run return 0
scoreboard players set #success simplenergy.data 0

# If player is not on ground (vertical movement), find an elevator block above and teleport the player to it
execute unless predicate simplenergy:is_on_ground positioned ~ ~2 ~ run return run function simplenergy:custom_blocks/elevator/go_up

# If player is sneaking, find an elevator block below and teleport the player to it
execute if predicate simplenergy:is_sneaking positioned ~ ~-3 ~ run return run function simplenergy:custom_blocks/elevator/go_down

