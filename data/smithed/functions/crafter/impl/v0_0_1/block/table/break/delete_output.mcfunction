
data modify storage smd:crafter temp.output_item_temp set from storage smd:crafter temp.output_item
execute store success score @s smd.data run data modify storage smd:crafter temp.output_item_temp set from entity @s Item
kill @s[scores={smd.data=0}]
