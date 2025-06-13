
# Imports
from beet import ProjectConfig
from stewbeet.utils import get_project_config

# Try to find and load the beet configuration file
cfg: ProjectConfig | None = get_project_config()

# Configuration
smithed_config: dict = {
	"project_id": cfg.id,
	"project_name": cfg.name,
	"version": cfg.version,
}

