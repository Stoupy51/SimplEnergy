#Kill undesired items and replace the item
	data modify entity @e[type=item,nbt={Item:{id:"minecraft:cobbled_deepslate"}},limit=1,sort=nearest,distance=..1] Item set from storage simplenergy:items 2012100

#Update the Battery to keep Energy
	execute if score @s EF_kJ matches 1.. run function simplenergy:destroy/keep_energy
kill @s
function energy_flux:wire_update
