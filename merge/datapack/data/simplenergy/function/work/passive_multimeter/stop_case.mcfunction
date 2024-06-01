
# Execute at the block found the function
tag @s add simplenergy.temp
execute as @e[scores={energy.max_storage=1..},limit=1,sort=nearest,distance=..1.5] at @s align xyz run function simplenergy:work/passive_multimeter/found_entity
tag @s remove simplenergy.temp

