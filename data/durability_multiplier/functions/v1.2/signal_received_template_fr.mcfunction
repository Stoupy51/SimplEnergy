
##Doit être appelée par le function tag #durability_multiplier:v1/durability_changed
##Définissez le multiplicateur de durabilité comparé à celle vanilla
##N'oubliez pas que votre multiplicateur doit être >= 1000, sinon cela n'a aucun effet.
##Ex. si vous voulez multiplier la durabilité par un facteur x4.5
##Vous allez mettre le score #multiplier à 4500 (4500 divisé by 1000 = 4.5)



#Exemple pris du data pack SimplEnergy
#Durabilité Custom pour les équipments en Simplunium (x7 pour l'armure en cuir & x1.2 pour les outils en diamant)
#La durabilité dans la seconde main est inutile ici car aucun outil en diamant ne peut y être utilisé.
	scoreboard players set #multiplier durability_multiplier.data 7000
	execute if score #head_valid durability_multiplier.data matches 1 if data storage durability_multiplier:main head{tag:{simplenergy:{simplunium:1b}}} run function #durability_multiplier:event/head
	execute if score #chest_valid durability_multiplier.data matches 1 if data storage durability_multiplier:main chest{tag:{simplenergy:{simplunium:1b}}} run function #durability_multiplier:event/chest
	execute if score #legs_valid durability_multiplier.data matches 1 if data storage durability_multiplier:main legs{tag:{simplenergy:{simplunium:1b}}} run function #durability_multiplier:event/legs
	execute if score #feet_valid durability_multiplier.data matches 1 if data storage durability_multiplier:main feet{tag:{simplenergy:{simplunium:1b}}} run function #durability_multiplier:event/feet
	scoreboard players set #multiplier durability_multiplier.data 1200
	execute if score #mainhand_valid durability_multiplier.data matches 1 if data storage durability_multiplier:main mainhand{tag:{simplenergy:{simplunium:1b}}} run function #durability_multiplier:event/mainhand
	#execute if score #offhand_valid durability_multiplier.data matches 1 if data storage durability_multiplier:main offhand{tag:{simplenergy:{simplunium:1b}}} run function #durability_multiplier:event/offhand


#Exemple qui multiple la durabilité de toutes les elytra sur le serveur par 2
	scoreboard players set #multiplier durability_multiplier.data 2000
	execute if score #chest_valid durability_multiplier.data matches 1 if data storage durability_multiplier:main chest{id:"minecraft:elytra"} run function #durability_multiplier:event/chest
	##Si un multiplicateur est appliqué sur un slot, vous ne pouvez pas l'exécuter à nouveau sur le même slot, donc cette commande ne sera jamais exécutée.
	execute if score #chest_valid durability_multiplier.data matches 1 if data storage durability_multiplier:main chest{id:"minecraft:elytra",tag:{custom_elytra:1b}} run function #durability_multiplier:event/chest


#Exemple avec des cannes à pêche et des boucliers (x3.14) et différentes syntaxes
	scoreboard players set #multiplier durability_multiplier.data 3140
	execute if score #mainhand_valid durability_multiplier.data matches 1 if data storage durability_multiplier:main mainhand{tag:{ctc:{id:"diamond_fishing_rod",from:"a_certain_pack"}}} run function #durability_multiplier:event/mainhand
	execute if score #offhand_valid durability_multiplier.data matches 1 if data storage durability_multiplier:main offhand.tag.ctc{id:"diamond_fishing_rod",from:"a_certain_pack"} run function #durability_multiplier:event/mainhand
	execute if score #mainhand_valid durability_multiplier.data matches 1 if data storage durability_multiplier:main mainhand.tag.some_private_nbt.diamond_shield run function #durability_multiplier:event/mainhand
	execute if score #offhand_valid durability_multiplier.data matches 1 if data storage durability_multiplier:main offhand.tag.some_private_nbt{diamond_shield:1b} run function #durability_multiplier:event/mainhand


#Exemple pour tous les items ayant le lore "Almost Unbreakable" avec différentes syntaxes
	scoreboard players set #multiplier durability_multiplier.data 2147483647
	execute if score #head_valid durability_multiplier.data matches 1 if data storage durability_multiplier:main head.tag.display{Lore:['[{"text":"Almost Unbreakable","italic":false,"color":"red"}]']} run function #durability_multiplier:event/head
	execute if score #chest_valid durability_multiplier.data matches 1 if data storage durability_multiplier:main chest.tag{display:{Lore:['[{"text":"Almost Unbreakable","italic":false,"color":"red"}]']}} run function #durability_multiplier:event/chest
	execute if score #legs_valid durability_multiplier.data matches 1 if data storage durability_multiplier:main legs{tag:{display:{Lore:['[{"text":"Almost Unbreakable","italic":false,"color":"red"}]']}}} run function #durability_multiplier:event/legs
	execute if score #feet_valid durability_multiplier.data matches 1 if data storage durability_multiplier:main feet{tag:{display:{Lore:['[{"text":"Almost Unbreakable","italic":false,"color":"red"}]']}}} run function #durability_multiplier:event/feet
	execute if score #mainhand_valid durability_multiplier.data matches 1 if data storage durability_multiplier:main mainhand{tag:{display:{Lore:['[{"text":"Almost Unbreakable","italic":false,"color":"red"}]']}}} run function #durability_multiplier:event/mainhand
	execute if score #offhand_valid durability_multiplier.data matches 1 if data storage durability_multiplier:main offhand{tag:{display:{Lore:['[{"text":"Almost Unbreakable","italic":false,"color":"red"}]']}}} run function #durability_multiplier:event/mainhand



