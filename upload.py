
# Imports
from python_datapack.continuous_delivery import load_credentials, upload_to_modrinth

# Get credentials
credentials: dict[str, str] = load_credentials("~/python_datapack/credentials.yml")

## Uploads
# Upload to Modrinth
from continuous_delivery.modrinth_config import modrinth_config
upload_to_modrinth(credentials, modrinth_config)

