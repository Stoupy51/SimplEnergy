
#> simplenergy:custom_blocks/elevator/tick
#
# @executed	as @e[tag=simplenergy.tick] & at @s
#
# @within	simplenergy:custom_blocks/tick
#

# If not enough energy, update model and stop
execute unless score @s energy.storage >= @s simplenergy.energy_rate run return run data modify entity @s item.components."minecraft:item_model" set value "simplenergy:elevator"
data modify entity @s item.components."minecraft:item_model" set value "simplenergy:elevator_on"

# Consume energy
scoreboard players set #20 simplenergy.data 20
scoreboard players operation #energy_rate simplenergy.data = @s simplenergy.energy_rate
scoreboard players operation #energy_rate simplenergy.data /= #20 simplenergy.data
scoreboard players operation @s energy.storage -= #energy_rate simplenergy.data

# Check if a player is on top of the elevator (cooldown)
execute positioned ~ ~1 ~ as @a[distance=..1,dx=0,dz=0] run function simplenergy:custom_blocks/elevator/as_player

