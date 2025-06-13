
# Imports
from stewbeet.continuous_delivery import load_credentials, upload_to_github, upload_to_modrinth, upload_to_pmc, upload_to_smithed

from continuous_delivery.github_config import github_config
from continuous_delivery.modrinth_config import modrinth_config
from continuous_delivery.pmc_config import pmc_config
from continuous_delivery.smithed_config import smithed_config

# Get credentials
credentials: dict[str, str] = load_credentials("~/stewbeet/credentials.yml")

## Uploads
# Upload to GitHub
changelog: str = upload_to_github(credentials, github_config)

# Upload to Modrinth
upload_to_modrinth(credentials, modrinth_config, changelog)

# Upload to Smithed
upload_to_smithed(credentials, smithed_config, changelog)

# Upload to PlanetMinecraft
upload_to_pmc(pmc_config, changelog)

