#!/bin/bash

sudo apt-get install python3-tk -y
# Define the name of your virtual environment
ENV_NAME=deepEnv

# Create the virtual environment
python3 -m venv $ENV_NAME

# Activate the virtual environment
source $ENV_NAME/bin/activate

# Install the libraries from requirements.txt
pip install -r deep_learning_req.txt

# Print a message indicating successful installation
echo "Environment created and requirements installed successfully."
