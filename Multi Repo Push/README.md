# Multi-Repository Push Script (multi_repo_push.sh)

The `multi_repo_push.sh` script is a convenient shell script designed to automate the process of pushing code changes to multiple repositories. This script is particularly useful when you need to synchronize your code across several remote repositories simultaneously.

## How to Use the Script

1. **Clone the Script**: Start by cloning this repository or downloading the `multi_repo_push.sh` script directly to your local machine.

2. **Configure Repositories**: Open the `multi_repo_push.sh` script in a text editor and modify the `REPOSITORIES` array. Add the URLs of the repositories you want to push your code to. Ensure each URL is enclosed in double quotes and separated by spaces.

```bash
# Example:
REPOSITORIES=(
  "https://github.com/username/repo1.git"
  "https://github.com/username/repo2.git"
  "https://gitlab.com/username/repo3.git"
)
```

3. **Execute the Script**: In your terminal or command prompt, navigate to the directory containing the `multi_repo_push.sh` script. Make sure you have execution permissions for the script (if not, use `chmod +x multi_repo_push.sh` to grant execution permissions).

4. **Run the Script**: Execute the script by typing `./multi_repo_push.sh` in your terminal. The script will push the code changes to all the repositories specified in the `REPOSITORIES` array.

## How the Script Works

The `multi_repo_push.sh` script follows these steps to push code to multiple repositories:

1. **Defining Repositories**: The script starts by defining an array named `REPOSITORIES`, where you should provide the URLs of the remote repositories you want to push your code to. For each repository URL, the script will perform the necessary Git operations.

2. **Checking Git Installation**: The script checks if Git is installed on your system using the `command -v git` command. If Git is not found, the script will prompt you to install Git before proceeding.

3. **Pushing to Each Repository**: For each repository URL in the `REPOSITORIES` array, the script performs the following actions:

   - Clones the repository if it doesn't exist locally, using `git clone`.
   - Changes the working directory to the repository using `cd`.
   - Pulls the latest changes from the remote repository using `git pull`.
   - Adds all changes to the staging area and commits them with a default message "Update code" using `git add .` and `git commit`.
   - Pushes the changes to the remote repository's `master` branch (you can modify this to push to a different branch if needed) using `git push origin master`.

4. **Completion**: After pushing the changes to all specified repositories, the script displays a success message indicating that the code has been pushed to all repositories.

## Safety Considerations

- Please review and understand the script's behavior before using it in a production environment.
- Ensure you have proper permissions to push to the specified repositories.
- Consider backing up critical code before running the script.
- Verify that the URLs in the `REPOSITORIES` array are accurate and point to the correct repositories.

Use this `multi_repo_push.sh` script responsibly to streamline code synchronization across multiple repositories and enjoy a more efficient development workflow! 🚀