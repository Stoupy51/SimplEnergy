
#> simplenergy:calls/simpledrawer/raw_simplunium/main
#
# @within	simplenergy:calls/simpledrawer/raw_simplunium/block
#			simplenergy:calls/simpledrawer/raw_simplunium/ingot
#

# Set score of material found to 1
scoreboard players set #success_material simpledrawer.io 1

# Set the convert counts
scoreboard players set #ingot_in_block simpledrawer.io 9
scoreboard players set #nugget_in_ingot simpledrawer.io 9

# Set the material data
data modify storage simpledrawer:io material set value {material: "simplenergy.raw_simplunium", material_name:"Raw Simplunium"}

# Fill the NBT with your own items
data modify storage simpledrawer:io material.block.item set from storage simplenergy:items all.raw_simplunium_block
data modify storage simpledrawer:io material.ingot.item set from storage simplenergy:items all.raw_simplunium

