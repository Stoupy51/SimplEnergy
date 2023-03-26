
# Advancement revoke
advancement revoke @s only simplenergy:right_click

# Copy SelectedItem tag to storage
data modify storage simplenergy:main SelectedItemTag set from entity @s SelectedItem.tag

# Switch on SelectedItem tag to run the right click function
execute if data storage simplenergy:main SelectedItemTag.simplenergy.multimeter run function simplenergy:right_click/multimeter/
execute if data storage simplenergy:main SelectedItemTag.simplenergy.wrench run function simplenergy:right_click/wrench/

# Memory clean up
data remove storage simplenergy:main SelectedItemTag
scoreboard players reset @s simplenergy.right_click

