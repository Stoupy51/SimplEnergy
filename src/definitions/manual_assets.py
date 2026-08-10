
# Imports
import shutil

from stewbeet.core import *
from stouputils import super_copy


def manual_assets_main() -> None:
	ASSETS_FOLDER: str = "./assets"
	renders: str = iso_renders_path()

	# Copy mechanization folder
	shutil.copytree(f"{ASSETS_FOLDER}/mechanization", f"{renders}/mechanization", dirs_exist_ok=True)

	# Copy cables to the renders folder
	super_copy(f"{ASSETS_FOLDER}/simple_cable.png", f"{renders}/{Mem.ctx.project_id}/")
	super_copy(f"{ASSETS_FOLDER}/advanced_cable.png", f"{renders}/{Mem.ctx.project_id}/")
	super_copy(f"{ASSETS_FOLDER}/elite_cable.png", f"{renders}/{Mem.ctx.project_id}/")
	super_copy(f"{ASSETS_FOLDER}/basic_item_cable.png", f"{renders}/{Mem.ctx.project_id}/")
	super_copy(f"{ASSETS_FOLDER}/servo_extractor.png", f"{renders}/{Mem.ctx.project_id}/")
	super_copy(f"{ASSETS_FOLDER}/servo_inserter.png", f"{renders}/{Mem.ctx.project_id}/")

	return

