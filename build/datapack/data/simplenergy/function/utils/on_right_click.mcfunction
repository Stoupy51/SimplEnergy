
#> simplenergy:utils/on_right_click
#
# @executed	as the player & at current position
#
# @within	advancement simplenergy:technical/right_click
#

# Advancement revoke
advancement revoke @s only simplenergy:technical/right_click

# Copy SelectedItem tag to storage and offhand
data modify storage simplenergy:main SelectedItemTag set from entity @s SelectedItem.components."minecraft:custom_data"
data modify storage simplenergy:main OffhandTag set from entity @s equipment.offhand.components."minecraft:custom_data"

# Switch on SelectedItem tag to run the right click function
execute if data storage simplenergy:main SelectedItemTag.simplenergy.multimeter run function simplenergy:utils/multimeter/right_click/main
execute if data storage simplenergy:main SelectedItemTag.simplenergy.wrench run function simplenergy:utils/wrench/right_click

# Switch on OffhandTag tag
execute if data storage simplenergy:main OffhandTag.simplenergy.multimeter run function simplenergy:utils/multimeter/right_click/main
execute if data storage simplenergy:main OffhandTag.simplenergy.wrench run function simplenergy:utils/wrench/right_click
execute if data storage simplenergy:main OffhandTag.simplenergy.battery_switcher run function simplenergy:utils/battery_switcher/right_click/main

# Memory clean up
data remove storage simplenergy:main OffhandTag
data remove storage simplenergy:main SelectedItemTag
scoreboard players reset @s simplenergy.right_click

