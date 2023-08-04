# AutoRevive - Process Monitoring and Restart Script

**AutoRevive** is a powerful Bash script designed to act as a vigilant guardian for your processes. It monitors a specific process, ensuring it remains active at all times. If the process goes down, AutoRevive steps in to automatically restart it, providing you with a seamless and uninterrupted experience.

### Usage

Run the script in your terminal, providing the name of the process you want to monitor as an argument:

```bash
./auto_revive.sh <process_name>
```

Replace `<process_name>` with the actual name of the process you want to monitor.

## How It Works

AutoRevive consists of two key functions:

1. **`check_process`**: Verifies whether a specified process is running using the `pgrep` command. If the process is active, it provides a status message. If not, it signals that the process is not running.

2. **`restart_process`**: Attempts to restart the process a configurable number of times. It waits for a brief moment between each restart, then checks if the process becomes active. If successful, it confirms the restart; otherwise, it notifies the user of unsuccessful attempts.

## Safety Considerations

- Ensure you have necessary permissions to monitor and restart the specified process.
- Verify the accuracy of the process name provided as an argument.
- Customize the `restart_process` function to match your process startup command.

Enjoy the benefits of automated process monitoring and uninterrupted operation with AutoRevive! 🔄