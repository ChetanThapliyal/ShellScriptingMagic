#!/bin/bash

# Create the project directory
mkdir my_project
cd my_project

# Initialize Git repository
git init

# Create necessary directories
mkdir src docs tests

# Create initial files
touch README.md src/main.py

# Install required dependencies
pip install package1 package2

# Initialize virtual environment
python -m venv venv
source venv/bin/activate

# Additional setup steps go here...
