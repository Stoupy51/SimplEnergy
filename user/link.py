
# Imports
from python_datapack.constants import *
from python_datapack.utils.print import *
from python_datapack.utils.io import *
from user.utils.advancements import add_visible_advancements
from user.utils.energy import complete_place_and_destroy
from user.utils.gui import setup_gui_in_resource_packs
from user.utils.machines import setup_machines

# Main function is run just before making finalyzing the build process (zip, headers, lang, ...)
def main(config: dict) -> None:
	database: dict[str, dict] = config['database']
	
	# Add commands to place and destroy functions for energy items
	complete_place_and_destroy(config)

	# Add advancements to the datapack
	add_visible_advancements(config)

	# Setup GUI in resource packs
	gui = setup_gui_in_resource_packs(config)

	# Setup machines
	setup_machines(config, gui)


	info("User code executed")

