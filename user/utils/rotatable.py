
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


	## Link with mechanization wrench
	MECH_FUNCTION_TAG: str = f"{build_datapack}/data/mechanization/tags/function"
	MECH_CALLS: str = f"{build_datapack}/data/{namespace}/function/calls/mechanization"

	# Link function tags
	json_content: dict = {"required":False,"values":[f"{namespace}:calls/mechanization/wrench_break"]}
	write_to_file(f"{MECH_FUNCTION_TAG}/wrench_break.json", super_json_dump(json_content))
	json_content = {"required":False,"values":[f"{namespace}:calls/mechanization/wrench_modify"]}
	write_to_file(f"{MECH_FUNCTION_TAG}/wrench_modify.json", super_json_dump(json_content))

	# Write slots functions
	write_to_file(f"{MECH_CALLS}/wrench_break.mcfunction", f"""
execute if entity @s[tag={namespace}.custom_block] run setblock ~ ~ ~ air destroy
execute if entity @s[tag={namespace}.custom_block] run function {namespace}:custom_blocks/destroy
""")
	write_to_file(f"{MECH_CALLS}/wrench_modify.mcfunction", f"execute if entity @s[tag={namespace}.rotatable] run function {namespace}:utils/wrench/rotate")

