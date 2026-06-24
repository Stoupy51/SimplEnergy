
#> simplenergy:utils/servo/check
#
# @executed	as @e[tag=simplenergy.servo,distance=..24]
#
# @within	simplenergy:utils/servo/on_interact [ as @e[tag=simplenergy.servo,distance=..24] ]
#

# Compute the rotation parity (0 = on, 1 = off)
scoreboard players set #two simplenergy.data 2
execute store result score #parity simplenergy.data run data get entity @s ItemRotation
scoreboard players operation #parity simplenergy.data %= #two simplenergy.data

# Keep the servo visually aligned while on (any even rotation is normalized to 0)
execute if score #parity simplenergy.data matches 0 unless data entity @s {ItemRotation:0b} run data modify entity @s ItemRotation set value 0b

# Apply the state only when the parity differs from the current state
execute if score #parity simplenergy.data matches 0 unless score @s simplenergy.servo_off matches 0 run function simplenergy:utils/servo/enable
execute if score #parity simplenergy.data matches 1 unless score @s simplenergy.servo_off matches 1 run function simplenergy:utils/servo/disable

