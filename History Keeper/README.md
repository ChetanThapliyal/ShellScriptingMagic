# History Keeper

The History Keeper is a Bash script that automatically saves your bash shell history and appends new entries to a designated file. It provides a convenient way to keep track of your command history over time.

## Introduction to the `history` Command

The `history` command in Linux allows you to view and manage the command history in your shell session. It provides a list of previously executed commands along with their line numbers.

Some common uses of the `history` command include:

- Viewing the command history: `history`
- Running a previous command by number: `!n` (replace `n` with the line number)
- Repeating the last command: `!!`
- Searching for a specific command: `CTRL + R` (reverse search)

## Usage

1. Download the ['history_keeper.sh'](https://github.com/che01tan/ShellScriptingMagic/blob/main/History%20Keeper/history_keeper.sh) script to your desired location.

2. Make the script executable by running the following command:

   ```bash
   chmod +x history_keeper.sh
   ```

3. Execute the script to automatically save your bash shell history and append new entries to the "history_keeper" file:

   ```bash
   ./history_keeper.sh
   ```

   This will create or update the "history_keeper" file in the same directory as the script.

4. You can schedule the script to run automatically at desired intervals using a cron job. For example, to run the script every hour, you can add the following line to your crontab:

   ```
   0 * * * * /path/to/history_keeper.sh
   ```

   Replace `/path/to/history_keeper.sh` with the actual path to the script file.

5. To view your saved command history, you can open the "history_keeper" file using any text editor:

   ```bash
   nano history_keeper
   ```

   The file will contain the accumulated command history from each run of the script.

## Additional things for a better history

### Preserve bash history in multiple terminal windows

Add following to `.bashrc` file:

```bash
# Avoid duplicates and consecutive duplicates
HISTCONTROL=ignoreboth

# Append to the history file instead of overwriting it
shopt -s histappend

# Append to the history file immediately after each command
PROMPT_COMMAND='history -a'

# Increase the history size and ignore some commands
HISTSIZE=10000
HISTIGNORE='ls:ll:history:exit'
```

Let's go through the above commands:

1. `HISTCONTROL=ignoreboth`
   This simplifies the history control by using the `ignoreboth` option, which combines `ignoredups` and `ignorespace`. It avoids storing duplicate commands and ignores commands that start with a space.

2. `PROMPT_COMMAND='history -a'`
   Appends new commands to the history file immediately after each command is executed.

3. `HISTSIZE=10000`
   This increases the size of the history list to 10,000 commands. Adjust this value as needed.

4. `HISTIGNORE='ls:ll:history:exit'`
   The `HISTIGNORE` variable is set to a colon-separated list of commands that should be ignored in the history. In this example, it ignores the `ls`, `ll`, `history`, and `exit` commands. Customize this list based on your preferences.

These improvements provide a more streamlined and effective approach for managing command history in the Bash shell.