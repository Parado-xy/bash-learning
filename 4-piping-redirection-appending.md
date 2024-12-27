

### Piping (`|`)
Piping is used to pass the output of one command as the input to another command. This is useful for chaining multiple commands together to process data.

**Example:**
```bash
ls -l | grep "txt"
```
- `ls -l`: Lists files in long format.
- `|`: The pipe operator passes the output of `ls -l` to `grep`.
- `grep "txt"`: Filters the output to show only lines containing "txt".

### Redirection Operators (`>` and `>>`)
Redirection operators are used to redirect the output of a command to a file.

#### `>` (Redirect Output)
The `>` operator redirects the output of a command to a file, overwriting the file if it already exists.

**Example:**
```bash
echo "Hello, World!" > output.txt
```
- `echo "Hello, World!"`: Prints "Hello, World!" to the terminal.
- `>`: Redirects the output to `output.txt`.
- `output.txt`: The file where the output is written. If the file exists, it will be overwritten.

#### `>>` (Append Output)
The `>>` operator redirects the output of a command to a file, appending to the file if it already exists.

**Example:**
```bash
echo "Another line" >> output.txt
```
- `echo "Another line"`: Prints "Another line" to the terminal.
- `>>`: Redirects the output to `output.txt`.
- `output.txt`: The file where the output is written. If the file exists, the new line is appended to the file.

### Combining Piping and Redirection
You can combine piping and redirection to create powerful command chains.

**Example:**
```bash
ps aux | grep "python" > python_processes.txt
```
- `ps aux`: Lists all running processes.
- `|`: Passes the output to `grep`.
- `grep "python"`: Filters the output to show only lines containing "python".
- `>`: Redirects the filtered output to `python_processes.txt`.

### Summary
- **Piping (`|`)**: Passes the output of one command as input to another.
- **Redirection (`>`)**: Redirects output to a file, overwriting the file.
- **Appending (`>>`)**: Redirects output to a file, appending to the file.
