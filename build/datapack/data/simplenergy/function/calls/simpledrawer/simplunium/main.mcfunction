
#> simplenergy:calls/simpledrawer/simplunium/main
#
# @within	simplenergy:calls/simpledrawer/simplunium/block
#			simplenergy:calls/simpledrawer/simplunium/ingot
#			simplenergy:calls/simpledrawer/simplunium/nugget
#

# Set score of material found to 1
scoreboard players set #success_material simpledrawer.io 1

# Set the convert counts
scoreboard players set #ingot_in_block simpledrawer.io 9
scoreboard players set #nugget_in_ingot simpledrawer.io 9

# Set the material data
data modify storage simpledrawer:io material set value {material: "simplenergy.simplunium", material_name:"Simplunium"}

# Fill the NBT with your own items
data modify storage simpledrawer:io material.block.item set from storage simplenergy:items all.simplunium_block
data modify storage simpledrawer:io material.ingot.item set from storage simplenergy:items all.simplunium_ingot
data modify storage simpledrawer:io material.nugget.item set from storage simplenergy:items all.simplunium_nugget

