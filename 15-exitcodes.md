Exit codes, also known as return codes, are crucial in scripting and programming to indicate the status of a script or command after it has executed. Here are some detailed notes on exit codes in Bash:

### What Are Exit Codes?
Exit codes are numeric codes returned by a command or script to the shell or calling program. They indicate whether the command or script executed successfully or encountered an error.

- **0**: Success
- **Non-zero**: Failure or error

### Checking Exit Codes
You can check the exit code of the last executed command using the special variable `$?`.

**Example**:
```bash
#!/bin/bash

# Run a command
ls /nonexistent_directory

# Check the exit code
if [ $? -eq 0 ]; then
    echo "Command succeeded."
else
    echo "Command failed with exit code $?."
fi
```
- `ls /nonexistent_directory`: Attempts to list a nonexistent directory.
- `$?`: Contains the exit code of the last executed command.
- `if [ $? -eq 0 ]`: Checks if the exit code is 0 (success).

### Setting Exit Codes in Scripts
You can set exit codes in your scripts using the `exit` command followed by the desired exit code.

**Example**:
```bash
#!/bin/bash

# A simple function
my_function() {
    echo "This is a function."
    return 2  # Sets the return code to 2
}

# Call the function
my_function

# Check the return code
echo "Function returned with code $?."
```
- `return 2`: Sets the return code of the function to 2.
- `echo "Function returned with code $?."`: Displays the return code.

### Using Exit Codes in Conditional Statements
Exit codes are often used in conditional statements to control the flow of the script.

**Example**:
```bash
#!/bin/bash

# Run a command
if grep "pattern" somefile.txt; then
    echo "Pattern found."
else
    echo "Pattern not found or error occurred."
fi
```
- `if grep "pattern" somefile.txt`: Checks if the `grep` command succeeds.
- `then echo "Pattern found."`: Executes if the command succeeds (exit code 0).
- `else echo "Pattern not found or error occurred."`: Executes if the command fails (non-zero exit code).

### Common Exit Codes
- **0**: Success
- **1**: General error
- **2**: Misuse of shell builtins (e.g., missing keyword or command, permission problem)
- **126**: Command invoked cannot execute
- **127**: Command not found
- **128**: Invalid argument to `exit`
- **130**: Script terminated by Control-C
- **255**: Exit status out of range

### Example Script with Custom Exit Codes
Here's an example of a script that uses custom exit codes:

```bash
#!/bin/bash

# Check if a file exists
check_file() {
    if [ -f "$1" ]; then
        echo "File exists."
        return 0  # Success
    else
        echo "File does not exist."
        return 1  # Failure
    fi
}

# Call the function with a filename argument
check_file "testfile.txt"

# Use the exit code in a conditional statement
if [ $? -eq 0 ]; then
    echo "Operation successful."
else
    echo "Operation failed with exit code $?."
fi

# Exit the script with a custom code
exit 3
```

### Summary
- **Exit Codes**: Indicate the status of a command or script (0 for success, non-zero for failure).
- **Checking Exit Codes**: Use `$?` to check the exit code of the last executed command.
- **Setting Exit Codes**: Use `return` in functions and `exit` in scripts to set exit codes.
- **Conditional Statements**: Use exit codes in `if` statements to control the script flow.
- **Common Exit Codes**: 0 (success), 1 (general error), 126 (cannot execute), 127 (command not found), etc.

Exit codes are a fundamental concept in Bash scripting for error handling and control flow.