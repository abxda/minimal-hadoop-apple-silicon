#!/bin/bash
echo "Starting Jupyter Lab..."
cd /vagrant

# Activate the conda environment
source /usr/local/miniconda/bin/activate bigdata

# Start Jupyter Lab
jupyter lab --ip='*' --NotebookApp.token='' --NotebookApp.password='' --app_dir=/vagrant/ --preferred_dir=/vagrant/ --no-browser > /dev/null 2>&1 &
