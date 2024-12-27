The `<`, `<<`, and `<<<` operators in Linux are used for input redirection and here documents. 

### `<` (Input Redirection)
The `<` operator is used to redirect input from a file to a command. This allows a command to read input from a file rather than from the standard input (keyboard).

**Example:**
```bash
sort < unsorted.txt
```
- `sort`: The command to sort lines of text.
- `< unsorted.txt`: Redirects the content of `unsorted.txt` as input to the `sort` command.

### `<<` (Here Document)
The `<<` operator is used to specify a here document, which allows you to provide a multiline string as input to a command. The input ends when the specified delimiter is encountered.

**Example:**
```bash
cat << EOF
This is a here document.
It allows multiline input.
EOF
```
- `cat`: The command to concatenate and display the content.
- `<< EOF`: Starts a here document. `EOF` is the delimiter indicating the end of the input.

### `<<<` (Here String)
The `<<<` operator is used to provide a string as input to a command. It is similar to a here document but is typically used for a single line of input.

**Example:**
```bash
grep "pattern" <<< "This is a single line of text."
```
- `grep "pattern"`: The command to search for the pattern "pattern".
- `<<< "This is a single line of text."`: Provides the string as input to the `grep` command.

### Summary
- **`<` (Input Redirection)**: Redirects input from a file.
- **`<<` (Here Document)**: Provides multiline input to a command.
- **`<<<` (Here String)**: Provides a single line of input to a command.

These operators are useful for automating input to commands and scripts, making command-line operations more flexible and powerful. 