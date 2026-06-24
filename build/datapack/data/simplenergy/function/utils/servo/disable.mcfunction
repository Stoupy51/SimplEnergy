
#> simplenergy:utils/servo/disable
#
# @executed	as @e[tag=simplenergy.servo,distance=..24]
#
# @within	simplenergy:utils/servo/check
#

# Mark the servo as off and stop item transfers
scoreboard players set @s simplenergy.servo_off 1
tag @s remove itemio.servo.extract
tag @s remove itemio.servo.insert

# Apply the grayed out model and play feedback
function simplenergy:utils/servo/update_model
playsound minecraft:block.lever.click block @a[distance=..16] ~ ~ ~ 0.6 0.7

