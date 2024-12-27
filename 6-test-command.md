Let's dive into the syntax for testing in shell scripts using `[` and the `-eq` operator, and how you can use `echo` to read the results.

### `[` (Test Command)
The `[` command (also known as `test`) is used to evaluate conditional expressions. When using `[ ]`, you are actually invoking the `test` command, and it requires a space after the opening bracket and before the closing bracket.

#### Example: `[ 1 = 1 ]`
```bash
if [ 1 = 1 ]; then
  echo "The test is true"
else
  echo "The test is false"
fi
```
- `[ 1 = 1 ]`: Tests if 1 is equal to 1.
- `=`: String comparison operator.
- `echo`: Prints the result.

**Output**:
```
The test is true
```

### `-eq` (Integer Comparison)
The `-eq` operator is used for integer comparison in shell scripts.

#### Example: `[ 1 -eq 1 ]`
```bash
if [ 1 -eq 1 ]; then
  echo "The test is true"
else
  echo "The test is false"
fi
```
- `[ 1 -eq 1 ]`: Tests if 1 is equal to 1.
- `-eq`: Integer comparison operator.

**Output**:
```
The test is true
```

### Using `echo` to Read Results
You can use `echo` to display the results of tests directly in the command line.

#### Example: Direct Comparison with `echo`
```bash
if [ 1 -eq 1 ]; then
  result="true"
else
  result="false"
fi
echo "The comparison is $result"
```
- This script evaluates the test and stores the result in the `result` variable.
- `echo "The comparison is $result"`: Displays the result.

**Output**:
```
The comparison is true
```

### Summary
- **`[ ]` (Test Command)**: Used to evaluate conditional expressions, requires spaces inside the brackets.
- **`-eq`**: Integer comparison operator.
- **`=`**: String comparison operator.
- **`echo`**: Used to display the result of tests.

By using these operators and commands, you can perform various comparisons and display their results in your shell scripts.