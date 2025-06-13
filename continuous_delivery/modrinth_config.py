
# Imports
import os

from beet import ProjectConfig
from stewbeet.utils import get_project_config

# Try to find and load the beet configuration file
cfg: ProjectConfig | None = get_project_config()

# Constants
SUMMARY: str = """
SimplEnergy is a simple Technology data pack created to add simple energy mechanics in your survival world.
Also, it has been made to help the development of energy data packs by using an energy library as simple as possible.
"""

DESCRIPTION_MARKDOWN: str = ""
if os.path.exists(f"{cfg.directory}/README.md"):
	with open(f"{cfg.directory}/README.md", encoding="utf-8") as file:
		DESCRIPTION_MARKDOWN = file.read()
else:
	print("README.md not found, description_markdown will be empty")

# Dependencies (list of modrinth slugs)
DEPENDENCIES: list[dict] = [
	#{"project_id": "QQRRSSTT", "version_id": "IIJJKKLL", "dependency_type": "required"},
]

# Version type (release, beta, alpha)
VERSION_TYPE: str = "alpha"

# Configuration
modrinth_config: dict = {
	"slug": cfg.id,
	"project_name": cfg.name,
	"version": cfg.version,
	"summary": SUMMARY,
	"description_markdown": DESCRIPTION_MARKDOWN,
	"dependencies": DEPENDENCIES,
	"version_type": VERSION_TYPE,
	"build_folder": cfg.output,
}

