
# Imports
import stouputils as stp
from python_datapack.utils.io import *

# Setup rotatables tags
def setup_rotatable_tags(config: dict, rotatables: list[str]) -> None:
	namespace: str = config["namespace"]

	# Add tags for rotatables
	for rotatable in rotatables:
		write_function(config,
			f"{namespace}:custom_blocks/{rotatable}/place_secondary",
			f"\n# Make the block rotatable by wrench\ntag @s add {namespace}.rotatable"
		)


	## Link with mechanization wrench
	# Link function tags
	json_content: dict[str, bool | list[str]] = {"required": False, "values": [f"{namespace}:calls/mechanization/wrench_break"]}
	write_tags(config, "mechanization:function/wrench_break", stp.super_json_dump(json_content))
	json_content = {"required": False, "values": [f"{namespace}:calls/mechanization/wrench_modify"]}
	write_tags(config, "mechanization:function/wrench_modify", stp.super_json_dump(json_content))

	# Write slots functions
	write_function(config, f"{namespace}:calls/mechanization/wrench_break", f"""
execute if entity @s[tag={namespace}.custom_block] run setblock ~ ~ ~ air destroy
execute if entity @s[tag={namespace}.custom_block] run function {namespace}:custom_blocks/destroy
""")
	write_function(config,
		f"{namespace}:calls/mechanization/wrench_modify",
		f"execute if entity @s[tag={namespace}.rotatable] run function {namespace}:utils/wrench/rotate"
	)

