
#> simplenergy:advancements/open_manual
#
# @executed	as the player & at current position
#
# @within	advancement simplenergy:technical/open_manual
#

# Revoke advancement and reset score
advancement revoke @s only simplenergy:technical/open_manual
scoreboard players set @s simplenergy.open_manual 0

# Show manual dialog if holding the manual
execute if items entity @s weapon.* *[custom_data~{simplenergy:{manual:true}}] run dialog show @s simplenergy:manual/page_1

