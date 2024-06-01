
## Old system while `execute summon` didn't exist yet:

# Place simplunium ore if it has been generated
#execute if score #generated_ore simplenergy.data matches 1 as @e[tag=simplenergy.new_simplunium_ore] at @s run function simplenergy:place/simplunium_ore/secondary
#execute if score #generated_ore simplenergy.data matches 1 run scoreboard players reset #generated_ore simplenergy.data

# Place deepslate simplunium ore if it has been generated
#execute if score #generated_deepslate_ore simplenergy.data matches 1 as @e[tag=simplenergy.new_deepslate_simplunium_ore] at @s run function simplenergy:place/deepslate_simplunium_ore/secondary
#execute if score #generated_deepslate_ore simplenergy.data matches 1 run scoreboard players reset #generated_deepslate_ore simplenergy.data

