execute store result score #game_version load.status run data get entity @r DataVersion

execute unless score #game_version load.status matches 2975.. run tellraw @a {"text":"SimplEnergy Error: You need at least Minecraft 1.18.2+.","italic":false,"color":"red"}
execute if score #game_version load.status matches 2975.. run tellraw @a[tag=convention.debug] {"text":"[Loaded SimplEnergy v1.8.0]","italic":false,"color":"green"}

execute unless entity @a run schedule function simplenergy:post_load 1t replace
