
# Imports
import shutil

from stewbeet.core import *
from stouputils import super_copy


def manual_assets_main() -> None:
	ASSETS_FOLDER: str = "./assets"
	manual_cache: str = Mem.ctx.meta.stewbeet.manual.cache_path

	# Copy mechanization folder
	shutil.copytree(f"{ASSETS_FOLDER}/mechanization", f"{manual_cache}/items/mechanization", dirs_exist_ok=True)

	# Copy cables to the manual folder
	super_copy(f"{ASSETS_FOLDER}/simple_cable.png", f"{manual_cache}/items/{Mem.ctx.project_id}/")
	super_copy(f"{ASSETS_FOLDER}/advanced_cable.png", f"{manual_cache}/items/{Mem.ctx.project_id}/")
	super_copy(f"{ASSETS_FOLDER}/elite_cable.png", f"{manual_cache}/items/{Mem.ctx.project_id}/")

	return

