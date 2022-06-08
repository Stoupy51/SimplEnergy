
scoreboard players set #success simplenergy.data 0
kill @e[type=snowball,tag=simplenergy.multimeter_marker,scores={simplenergy.data_2=3..}]
execute store success score #success simplenergy.data run scoreboard players add @e[type=snowball,tag=simplenergy.multimeter_marker] simplenergy.data_2 1
execute if score #success simplenergy.data matches 1 run schedule function simplenergy:work/passive_multimeter/remove_markers 1t replace
