Checking if arguments were passed in a Bash script is straightforward. You can use the special variable `$#` to check the number of arguments passed to the script. If the number of arguments is greater than 0, then arguments were passed.

Here’s an example of how to do this:

### Script to Check if Arguments Were Passed
```bash
#!/bin/bash

if [ $# -eq 0 ]; then
    echo "No arguments were passed."
else
    echo "Arguments were passed:"
    for arg in "$@"; do
        echo "$arg"
    done
fi
```

### Explanation:
1. **Checking Number of Arguments**:
   - `if [ $# -eq 0 ]; then`: This checks if the number of arguments (`$#`) is equal to 0.
   - `echo "No arguments were passed."`: If the number of arguments is 0, it prints this message.

2. **Handling Passed Arguments**:
   - `else`: If arguments were passed (i.e., `$#` is not 0), it proceeds to this block.
   - `echo "Arguments were passed:"`: Prints a message indicating that arguments were passed.
   - `for arg in "$@"; do ... done`: Loops through all the passed arguments (`"$@"`) and prints each one.

### Example Usage:
Save the script to a file (e.g., `check_args.sh`), make it executable, and run it with and without arguments:
```bash
chmod +x check_args.sh

./check_args.sh  # Outputs: No arguments were passed.

./check_args.sh arg1 arg2 arg3  # Outputs: Arguments were passed: arg1 arg2 arg3
```

This script will help you determine whether any arguments were passed to your Bash script and will list them if they were.