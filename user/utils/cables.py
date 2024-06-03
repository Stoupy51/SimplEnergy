
# Imports
from python_datapack.utils.print import *
from python_datapack.utils.io import *
from user.setup_database import STARTING_CMD

# Setup machines work and visuals
def setup_cables_models(config: dict, gui: dict[str, int]) -> None:
	database: dict[str, dict] = config['database']
	namespace: str = config['namespace']
	build_datapack: str = config['build_datapack']

	# Setup cables models
