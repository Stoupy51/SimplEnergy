
# Score initialization and kill snowball entities alive for more than 5 ticks
scoreboard players set #success simplenergy.data 0
kill @e[type=snowball,tag=simplenergy.multimeter_marker,scores={simplenergy.timer_data=5..}]

# Increase timer_data score by 1
execute store success score #success simplenergy.data run scoreboard players add @e[type=snowball,tag=simplenergy.multimeter_marker] simplenergy.timer_data 1

# Run again schedule if there are remaining snowballs
execute if score #success simplenergy.data matches 1 run schedule function simplenergy:work/passive_multimeter/remove_markers 1t replace

