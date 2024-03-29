
## Python script that will create for each item:
# - the recipe for the item (if it exists)
# - the block placement and breaking (if it exists)
# - the item description (if needed)
# - some other stuff (if needed)
# And apply them to the right files

# Importing libraries
import os
import sys
import json
import generate_manual
import nbt_utils

# Checking if the script is executed from the right folder
fix_path = os.path.dirname(os.path.realpath(__file__)).replace("\\", "/")
filename = os.path.realpath(__file__).replace("\\", "/").replace(fix_path + "/", "")

# Create the dictionary of all the items
with open(f"{fix_path}/items.json", "r") as f:
	categories = dict(json.load(f))

# Generate the manual files
if generate_manual.generate_manual_files(categories) != 0:
	print("Error while generating the SimplEnergy manual")
	sys.exit(1)

## For each category, edit the dictionary with automatic values
for category in categories.values():
	for item, nbt in category.items():

		# Small changes in the dictionary for the item storage
		nbt["Slot"] = 16
		nbt["Count"] = 1
		nbt["tag"]["smithed"]["id"] = item
		nbt["tag"]["smithed"]["from"] = "stoupy:simplenergy"
		nbt["tag"]["simplenergy"] = {item:1}
		if nbt["tag"]["display"].get("Lore") == None:
			nbt["tag"]["display"]["Lore"] = []
		nbt["tag"]["display"]["Lore"].append('{"text":"SimplEnergy","color":"blue","italic":true}')
		if nbt["tag"]["smithed"]["dict"].get("block") != None and nbt["tag"].get("BlockEntityTag") == None:
			nbt["tag"]["BlockEntityTag"] = {"Items":[{"id":"minecraft:stone", "Count":1, "Slot":0, "tag":{"smithed":{"block":{"from":"simplenergy", "id":f"simplenergy:{item}"}}}}]}
		if nbt.get("crafting") == None:
			nbt["crafting"] = []

## For each category, create the storage line
with open(f"{fix_path}/data/simplenergy/functions/load/set_items_in_storage.mcfunction", "w") as f:

	# Write the header
	f.write(f"""
## This file is automatically generated by the '{filename}' script
# Don't edit this file but the script instead !
""")
	
	# For each category, write the items
	for category, d in categories.items():

		# Write the category name on comment
		f.write(f"\n## {category.title()} items\n")

		for item, nbt in d.items():
			item_nbt = nbt_utils.dict_to_nbt(nbt)
			f.write(f"""# {item.replace(" ", "").title()}
data modify storage simplenergy:main all.{item} set value {item_nbt}
""")
	f.write("\n")

