
# Install required libraries
import sys
import os
required = ["python_datapack"]
for package in required:
	try:
		__import__(package)
	except ImportError:
		os.system(f"{sys.executable} -m pip install {package}")

# Setup config
from config import configuration

# Import my code
from user.setup_database import main as setup_database_main
from user.setup_external_database import main as setup_external_database_main
from user.link import main as link_main	# Called near the end of the build process

# Run build process
from python_datapack import build_process
if __name__ == "__main__":
	build_process(configuration, setup_database_main, setup_external_database_main, link_main)

