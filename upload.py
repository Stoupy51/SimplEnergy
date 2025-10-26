
# pyright: reportUnknownVariableType=false
# Imports
from beet import ProjectConfig
from stewbeet import JsonDict
from stewbeet.continuous_delivery import load_credentials, upload_to_github, upload_to_modrinth, upload_to_pmc, upload_to_smithed
from stewbeet.utils import get_project_config
from stouputils.io import read_file

# Get credentials and try to find the beet configuration
credentials: dict[str, str] = load_credentials("~/stewbeet/credentials.yml")
cfg: ProjectConfig = get_project_config()

# Constants
SUMMARY: str = """
SimplEnergy is a simple Technology data pack created to add simple energy mechanics in your survival world.
Also, it has been made to help the development of energy data packs by using an energy library as simple as possible.
"""

## Uploads
# Upload to GitHub
github_config: JsonDict = {
    "project_name": cfg.name,
    "version": cfg.version,
    "build_folder": cfg.output,
    "endswith": [".zip"]
}
changelog: str = upload_to_github(credentials, github_config)

# Upload to Modrinth
modrinth_config: JsonDict = {
    "slug": cfg.id,
    "project_name": cfg.name,
    "version": cfg.version,
    "summary": SUMMARY,
    "description_markdown": read_file(f"{cfg.directory}/README.md"),
    "dependencies": [
        #{"project_id": "QQRRSSTT", "version_id": "IIJJKKLL", "dependency_type": "required"},
    ],
    "version_type": "beta",
    "build_folder": cfg.output,
}
upload_to_modrinth(credentials, modrinth_config, changelog)

# Upload to Smithed
smithed_config: JsonDict = {
	"project_id": cfg.id,
	"project_name": cfg.name,
	"version": cfg.version,
}
upload_to_smithed(credentials, smithed_config, changelog)

# Upload to PlanetMinecraft
pmc_config: JsonDict = {
	"project_url": "https://www.planetminecraft.com/account/manage/data-packs/5305840/",
	"version": cfg.version,
}
upload_to_pmc(pmc_config, changelog)

