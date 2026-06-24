
#> simplenergy:utils/servo/enable
#
# @executed	as @e[tag=simplenergy.servo,distance=..24]
#
# @within	simplenergy:utils/servo/check
#

# Mark the servo as on and allow item transfers again
scoreboard players set @s simplenergy.servo_off 0
execute if entity @s[tag=simplenergy.servo_extractor] run tag @s add itemio.servo.extract
execute if entity @s[tag=simplenergy.servo_inserter] run tag @s add itemio.servo.insert

# Restore the normal model and play feedback
function simplenergy:utils/servo/update_model
playsound minecraft:block.lever.click block @a[distance=..16] ~ ~ ~ 0.6 1.2

