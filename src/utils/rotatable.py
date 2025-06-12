
# Imports
from beet import FunctionTag
from stewbeet.core import *
from stewbeet.core.utils.io import write_function


# Setup rotatables tags
def setup_rotatable_tags(rotatables: list[str]) -> None:
	ns: str = Mem.ctx.project_id

	# Add tags for rotatables
	for rotatable in rotatables:
		write_function(
			f"{ns}:custom_blocks/{rotatable}/place_secondary",
			f"\n# Make the block rotatable by wrench\ntag @s add {ns}.rotatable"
		)


	## Link with mechanization wrench
	# Link function tags
	json_content: dict[str, bool | list[str]] = {"required": False, "values": [f"{ns}:calls/mechanization/wrench_break"]}
	Mem.ctx.data["mechanization"].function_tags["wrench_break"] = FunctionTag(super_json_dump(json_content))
	json_content = {"required": False, "values": [f"{ns}:calls/mechanization/wrench_modify"]}
	Mem.ctx.data["mechanization"].function_tags["wrench_modify"] = FunctionTag(super_json_dump(json_content))

	# Write slots functions
	write_function(f"{ns}:calls/mechanization/wrench_break", f"""
execute if entity @s[tag={ns}.custom_block] run setblock ~ ~ ~ air destroy
execute if entity @s[tag={ns}.custom_block] run function {ns}:custom_blocks/destroy
""")
	write_function(
		f"{ns}:calls/mechanization/wrench_modify",
		f"execute if entity @s[tag={ns}.rotatable] run function {ns}:utils/wrench/rotate"
	)

