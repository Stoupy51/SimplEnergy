
#> simplenergy:load/secondary
#
# @within	simplenergy:load/main
#

# SimplEnergy
scoreboard objectives add simplenergy.data dummy
scoreboard players set #simplenergy.major load.status 2
scoreboard players set #simplenergy.minor load.status 0
scoreboard players set #simplenergy.patch load.status 0
tag Stoupy51 add convention.debug


# Check dependencies and wait for a player to connect (to get server version)
function simplenergy:load/check_dependencies
function simplenergy:load/waiting_for_player

