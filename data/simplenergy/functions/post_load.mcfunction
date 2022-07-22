
execute if entity @p store result score #game_version load.status run data get entity @p DataVersion

execute unless score #game_version load.status matches 3105.. run tellraw @a {"text":"SimplEnergy Error: You need at least Minecraft 1.19+.","italic":false,"color":"red"}
execute if score #game_version load.status matches 3105.. run tellraw @a[tag=convention.debug] {"text":"[Loaded SimplEnergy v1.9.6]","italic":false,"color":"green"}

# Check region
forceload add 0 0
execute unless score #force_loaded simplenergy.data matches 1 store success score #force_loaded simplenergy.data run summon marker 0 0 0 {Tags:["simplenergy.forceload","global.forceload"]}

execute unless entity @a run schedule function simplenergy:post_load 1t replace
