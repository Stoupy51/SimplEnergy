
##Should be called by function tag #durability_multiplier:v1/durability_changed
##Set the durability multiplier compared to vanilla durability
##Keep in mind that your multiplier should be >= 1000, or else there is no effect.
##E.g. if you want to multiply durability by a x4.5 factor
##You'll need to put #multiplier score to 4500 (4500 divided by 1000 = 4.5)



#Example taken from SimplEnergy data pack
#Custom durability for Simplunium Armor & Tools (x7 leather armor & x1.2 diamond tools)
#Offhand durability here is useless because no diamond tools can be used in offhand
	scoreboard players set #multiplier durability_multiplier.data 7000
	execute if score #head_valid durability_multiplier.data matches 1 if data storage durability_multiplier:main head{tag:{simplenergy:{simplunium:1b}}} run function #durability_multiplier:event/head
	execute if score #chest_valid durability_multiplier.data matches 1 if data storage durability_multiplier:main chest{tag:{simplenergy:{simplunium:1b}}} run function #durability_multiplier:event/chest
	execute if score #legs_valid durability_multiplier.data matches 1 if data storage durability_multiplier:main legs{tag:{simplenergy:{simplunium:1b}}} run function #durability_multiplier:event/legs
	execute if score #feet_valid durability_multiplier.data matches 1 if data storage durability_multiplier:main feet{tag:{simplenergy:{simplunium:1b}}} run function #durability_multiplier:event/feet
	scoreboard players set #multiplier durability_multiplier.data 1200
	execute if score #mainhand_valid durability_multiplier.data matches 1 if data storage durability_multiplier:main mainhand{tag:{simplenergy:{simplunium:1b}}} run function #durability_multiplier:event/mainhand
	#execute if score #offhand_valid durability_multiplier.data matches 1 if data storage durability_multiplier:main offhand{tag:{simplenergy:{simplunium:1b}}} run function #durability_multiplier:event/offhand


#Example that multiply every elytra durability on the server by 2
	scoreboard players set #multiplier durability_multiplier.data 2000
	execute if score #chest_valid durability_multiplier.data matches 1 if data storage durability_multiplier:main chest{id:"minecraft:elytra"} run function #durability_multiplier:event/chest
	##If a multiplier has been applied on a slot, you can't run it again on the same slot so this command will never run.
	execute if score #chest_valid durability_multiplier.data matches 1 if data storage durability_multiplier:main chest{id:"minecraft:elytra",tag:{custom_elytra:1b}} run function #durability_multiplier:event/chest


#Example with some fishing rod and shield (x3.14) and different syntaxes
	scoreboard players set #multiplier durability_multiplier.data 3140
	execute if score #mainhand_valid durability_multiplier.data matches 1 if data storage durability_multiplier:main mainhand{tag:{ctc:{id:"diamond_fishing_rod",from:"a_certain_pack"}}} run function #durability_multiplier:event/mainhand
	execute if score #offhand_valid durability_multiplier.data matches 1 if data storage durability_multiplier:main offhand.tag.ctc{id:"diamond_fishing_rod",from:"a_certain_pack"} run function #durability_multiplier:event/mainhand
	execute if score #mainhand_valid durability_multiplier.data matches 1 if data storage durability_multiplier:main mainhand.tag.some_private_nbt.diamond_shield run function #durability_multiplier:event/mainhand
	execute if score #offhand_valid durability_multiplier.data matches 1 if data storage durability_multiplier:main offhand.tag.some_private_nbt{diamond_shield:1b} run function #durability_multiplier:event/mainhand


#Example for every item having lore "Almost Unbreakable" with different syntaxes
	scoreboard players set #multiplier durability_multiplier.data 2147483647
	execute if score #head_valid durability_multiplier.data matches 1 if data storage durability_multiplier:main head.tag.display{Lore:['[{"text":"Almost Unbreakable","italic":false,"color":"red"}]']} run function #durability_multiplier:event/head
	execute if score #chest_valid durability_multiplier.data matches 1 if data storage durability_multiplier:main chest.tag{display:{Lore:['[{"text":"Almost Unbreakable","italic":false,"color":"red"}]']}} run function #durability_multiplier:event/chest
	execute if score #legs_valid durability_multiplier.data matches 1 if data storage durability_multiplier:main legs{tag:{display:{Lore:['[{"text":"Almost Unbreakable","italic":false,"color":"red"}]']}}} run function #durability_multiplier:event/legs
	execute if score #feet_valid durability_multiplier.data matches 1 if data storage durability_multiplier:main feet{tag:{display:{Lore:['[{"text":"Almost Unbreakable","italic":false,"color":"red"}]']}}} run function #durability_multiplier:event/feet
	execute if score #mainhand_valid durability_multiplier.data matches 1 if data storage durability_multiplier:main mainhand{tag:{display:{Lore:['[{"text":"Almost Unbreakable","italic":false,"color":"red"}]']}}} run function #durability_multiplier:event/mainhand
	execute if score #offhand_valid durability_multiplier.data matches 1 if data storage durability_multiplier:main offhand{tag:{display:{Lore:['[{"text":"Almost Unbreakable","italic":false,"color":"red"}]']}}} run function #durability_multiplier:event/mainhand



