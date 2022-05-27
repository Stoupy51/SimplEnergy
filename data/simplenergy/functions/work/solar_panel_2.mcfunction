
scoreboard players remove #count simplenergy.data 1
execute unless score #count simplenergy.data matches 0 store success score #success simplenergy.data if block ~ ~ ~ #simplenergy:non_solid positioned ~ ~1 ~ run function simplenergy:work/solar_panel_2
