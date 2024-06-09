
#> simplenergy:custom_blocks/electric_smelter/place_secondary
#
# @within	simplenergy:custom_blocks/electric_smelter/place_main
#

# Add convention and utils tags, and the custom block tag
tag @s add global.ignore
tag @s add global.ignore.kill
tag @s add smithed.entity
tag @s add smithed.block
tag @s add simplenergy.custom_block
tag @s add simplenergy.electric_smelter
tag @s add simplenergy.vanilla.minecraft_furnace

# Modify item display entity to match the custom block
item replace entity @s container.0 with minecraft:furnace[minecraft:custom_model_data=2012028]
data modify entity @s transformation.scale set value [1.002f,1.008f,1.002f]
data modify entity @s transformation.translation[1] set value 0.003f
data modify entity @s brightness set value {block:15,sky:15}

# Apply rotation
execute if score #rotation simplenergy.data matches 1 run data modify entity @s Rotation[0] set value 180.0f
execute if score #rotation simplenergy.data matches 2 run data modify entity @s Rotation[0] set value 270.0f
execute if score #rotation simplenergy.data matches 3 run data modify entity @s Rotation[0] set value 0.0f
execute if score #rotation simplenergy.data matches 4 run data modify entity @s Rotation[0] set value 90.0f

# Furnace NBT Recipes
execute align xyz positioned ~.5 ~ ~.5 unless entity @e[type=marker,dx=-1,dy=-1,dz=-1,tag=furnace_nbt_recipes.furnace] run summon marker ~ ~ ~ {Tags:["furnace_nbt_recipes.furnace"]}

# Energy part
tag @s add energy.receive
scoreboard players set @s energy.max_storage 8000
scoreboard players operation @s energy.transfer_rate = @s energy.max_storage
scoreboard players add @s energy.storage 0
scoreboard players add @s energy.change_rate 0
function energy:v1/api/init_machine

# Make the block rotatable by wrench
tag @s add simplenergy.rotatable
# Add tag for loop every tick
tag @s add simplenergy.tick

