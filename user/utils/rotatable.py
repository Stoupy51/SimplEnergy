
# Imports
from python_datapack.utils.print import *
from python_datapack.utils.io import *

# Setup rotatables tags
def setup_rotatable_tags(config: dict, rotatables: list[str]) -> None:
	namespace: str = config['namespace']
	build_datapack: str = config['build_datapack']
	path: str = f"{build_datapack}/data/{namespace}/function/custom_blocks"

	# Add tags for rotatables
	for rotatable in rotatables:
		file: str = f"{path}/{rotatable}/place_secondary.mcfunction"
		write_to_file(file, f"\n# Make the block rotatable by wrench\ntag @s add {namespace}.rotatable")

	return

