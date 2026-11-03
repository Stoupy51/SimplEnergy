
#> simplenergy:utils/on_right_click
#
# @executed	as the player & at current position
#
# @within	advancement simplenergy:technical/right_click
#

# Advancement revoke
advancement revoke @s only simplenergy:technical/right_click

# Run the right click function of the item held in each hand
execute if items entity @s weapon.mainhand *[custom_data~{"simplenergy":{"multimeter":true}}] run function simplenergy:utils/multimeter/right_click/main
execute if items entity @s weapon.mainhand *[custom_data~{"simplenergy":{"wrench":true}}] run function simplenergy:utils/wrench/right_click
execute if items entity @s weapon.offhand *[custom_data~{"simplenergy":{"multimeter":true}}] run function simplenergy:utils/multimeter/right_click/main
execute if items entity @s weapon.offhand *[custom_data~{"simplenergy":{"wrench":true}}] run function simplenergy:utils/wrench/right_click
execute if items entity @s weapon.offhand *[custom_data~{"simplenergy":{"battery_switcher":true}}] run function simplenergy:utils/battery_switcher/right_click/main

scoreboard players reset @s simplenergy.right_click

