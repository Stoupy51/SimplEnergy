#Kill undesired items and replace the item
	data modify entity @e[type=item,nbt={Item:{id:"minecraft:cobbled_deepslate"}},limit=1,sort=nearest,distance=..1] Item set from storage simplenergy:items all.2012100

#Update the Battery to keep Energy
	execute if score @s energy.storage matches 1.. run function simplenergy:destroy/keep_energy
#Call on a machine when broken to remove its connections
function energy:v1/api/break_machine
kill @s
