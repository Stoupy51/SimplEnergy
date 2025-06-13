
# Imports
from beet import ProjectConfig
from stewbeet.utils import get_project_config

# Try to find and load the beet configuration file
cfg: ProjectConfig | None = get_project_config()

# Constants
PMC_URL: str = "https://www.planetminecraft.com/account/manage/data-packs/5305840/"

# Configuration
pmc_config: dict = {
	"project_url": PMC_URL,
	"version": cfg.version,
}

