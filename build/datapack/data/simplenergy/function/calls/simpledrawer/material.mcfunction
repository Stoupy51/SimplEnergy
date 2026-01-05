
#> simplenergy:calls/simpledrawer/material
#
# @within	#simpledrawer:material
#

execute unless score #success_material simpledrawer.io matches 1 if data storage simpledrawer:io item_material.components."minecraft:custom_data".simplenergy.simplunium_block run function simplenergy:calls/simpledrawer/simplunium/block
execute unless score #success_material simpledrawer.io matches 1 if data storage simpledrawer:io item_material.components."minecraft:custom_data".simplenergy.simplunium_ingot run function simplenergy:calls/simpledrawer/simplunium/ingot
execute unless score #success_material simpledrawer.io matches 1 if data storage simpledrawer:io item_material.components."minecraft:custom_data".simplenergy.simplunium_nugget run function simplenergy:calls/simpledrawer/simplunium/nugget
execute unless score #success_material simpledrawer.io matches 1 if data storage simpledrawer:io item_material.components."minecraft:custom_data".simplenergy.raw_simplunium_block run function simplenergy:calls/simpledrawer/raw_simplunium/block
execute unless score #success_material simpledrawer.io matches 1 if data storage simpledrawer:io item_material.components."minecraft:custom_data".simplenergy.raw_simplunium run function simplenergy:calls/simpledrawer/raw_simplunium/ingot

