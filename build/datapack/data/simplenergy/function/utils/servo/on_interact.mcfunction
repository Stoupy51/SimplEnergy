
#> simplenergy:utils/servo/on_interact
#
# @executed	as the player & at current position
#
# @within	advancement simplenergy:technical/servo_toggle
#

# Revoke the advancement so it can trigger again
advancement revoke @s only simplenergy:technical/servo_toggle

# Check the servos within reach (the change detection makes it a no-op for the ones that did not rotate)
execute as @e[tag=simplenergy.servo,distance=..24] run function simplenergy:utils/servo/check

