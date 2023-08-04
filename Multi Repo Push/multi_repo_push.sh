#!/bin/bash

# Define the list of repository URLs
REPOSITORIES=(
  "https://github.com/username/repo1.git"
  "https://github.com/username/repo2.git"
  "https://gitlab.com/username/repo3.git"
  # Add more repository URLs as needed
)

# Check if Git is installed
if ! command -v git &> /dev/null; then
  echo "Git is not installed. Please install Git and try again."
  exit 1
fi

# Function to push code to a given repository
push_to_repo() {
  local repo_url="$1"

  # Extract repository name from URL
  repo_name=$(basename -s .git "$repo_url")

  # Clone the repository if it doesn't exist locally
  if [ ! -d "$repo_name" ]; then
    git clone "$repo_url" || {
      echo "Failed to clone repository: $repo_url"
      exit 1
    }
  fi

  # Change directory to the repository
  cd "$repo_name" || {
    echo "Failed to change directory to: $repo_name"
    exit 1
  }

  # Pull the latest changes from the remote repository
  git pull || {
    echo "Failed to pull latest changes from repository: $repo_url"
    exit 1
  }

  # Add all changes and commit
  git add .
  git commit -m "Update code"

  # Push the changes to the remote repository
  git push origin master || {
    echo "Failed to push changes to repository: $repo_url"
    exit 1
  }

  # Return to the original directory
  cd ..
}

# Iterate through each repository and push the code
for repository_url in "${REPOSITORIES[@]}"; do
  echo "Pushing code to: $repository_url"
  push_to_repo "$repository_url"
done

echo "Code pushed to all repositories successfully."
