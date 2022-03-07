tag @s add simplenergy.balance
tag @s add simplenergy.balanced
execute as @e[type=glow_item_frame,tag=!simplenergy.balance,tag=simplenergy.destroyer,distance=..1.1] if score @s energy.max_storage = temp simplenergy.data at @s run function simplenergy:balance/found
