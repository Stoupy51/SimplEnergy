
# Imports
from python_datapack.constants import *
from python_datapack.utils.print import *
from python_datapack.utils.io import *
from user.utils.energy import complete_place_and_destroy

# Main function is run just before making finalyzing the build process (zip, headers, lang, ...)
def main(config: dict) -> None:
	
	# Add commands to place and destroy functions for energy items
	complete_place_and_destroy(config)











	info("User code executed")

