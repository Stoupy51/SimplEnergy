#Kill undesired Items & Replace the item to keep Motion
	data modify entity @e[type=item,nbt={Item:{id:"minecraft:iron_block"}},limit=1,sort=nearest,distance=..1] Item set from storage simplenergy:items all.2012102

#Update the Battery to keep Energy
	execute if score @s energy.storage matches 1.. run function simplenergy:destroy/keep_energy
#Call on a machine when broken to remove its connections
function energy:v1/api/break_machine
kill @s
