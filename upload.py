
# Imports
from python_datapack.continuous_delivery import load_credentials, upload_to_github, upload_to_modrinth, upload_to_smithed, upload_to_pmc

# Get credentials
credentials: dict[str, str] = load_credentials("~/python_datapack/credentials.yml")

## Uploads
# Upload to GitHub
from continuous_delivery.github_config import github_config
changelog: str = upload_to_github(credentials, github_config)

# Upload to Modrinth
from continuous_delivery.modrinth_config import modrinth_config
upload_to_modrinth(credentials, modrinth_config, changelog)

# Upload to Smithed
from continuous_delivery.smithed_config import smithed_config
upload_to_smithed(credentials, smithed_config, changelog)

# Upload to PlanetMinecraft
from continuous_delivery.pmc_config import pmc_config
upload_to_pmc(pmc_config, changelog)

