scoreboard objectives add SE_Data dummy
scoreboard objectives add SE_SimpleGen dummy
scoreboard objectives add SE_JoulemeterUse minecraft.used:minecraft.warped_fungus_on_a_stick

scoreboard players set Version SE_Data 1020

schedule function simplenergy:post_load 2s replace