#!/bin/bash

# Prompt the user for package manager
read -p "Enter the package manager (default: apt-get): " PACKAGE_MANAGER
PACKAGE_MANAGER="${PACKAGE_MANAGER:-apt-get}"

# Prompt the user for Docker package name
read -p "Enter the Docker package name (default: docker.io): " DOCKER_PACKAGE
DOCKER_PACKAGE="${DOCKER_PACKAGE:-docker.io}"

# Function to install a package using the specified package manager
install_package() {
    local package_manager="$1"
    local package_name="$2"
    sudo "$package_manager" update
    sudo "$package_manager" install "$package_name" -y
}

# Install Docker using the package manager
install_package "$PACKAGE_MANAGER" "$DOCKER_PACKAGE"

# Add the current user to the docker group
sudo usermod -aG docker "$USER"

echo "Docker installation and configuration completed."
