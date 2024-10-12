
# Imports
from python_datapack.utils.io import *

def main(config: dict) -> None:
	assets_folder: str = config["assets_folder"]
	manual_path: str = config["manual_path"]
	namespace: str = config["namespace"]

	# Copy mechanization folder
	shutil.copytree(f"{assets_folder}/mechanization", f"{manual_path}/items/mechanization", dirs_exist_ok=True)

	# Copy cables to the manual folder
	super_copy(f"{assets_folder}/simple_cable.png", f"{manual_path}/items/{namespace}/")
	super_copy(f"{assets_folder}/advanced_cable.png", f"{manual_path}/items/{namespace}/")
	super_copy(f"{assets_folder}/elite_cable.png", f"{manual_path}/items/{namespace}/")

	return

