
# Imports
from beet import ProjectConfig
from stewbeet.utils import get_project_config

# Try to find and load the beet configuration file
cfg: ProjectConfig | None = get_project_config()

# Configuration
github_config: dict = {
	"project_name": cfg.name,
	"version": cfg.version,
	"build_folder": cfg.output,
	"endswith": [".zip"]
}

