Here's a detailed explanation of `case` statements in shell scripting:

### Basic Structure
The `case` statement in shell scripting is used to execute different blocks of code based on the value of a variable or expression. It is similar to the `switch` statement in other programming languages.

```bash
case expression in
    pattern1)
        # Code to execute if expression matches pattern1
        ;;
    pattern2)
        # Code to execute if expression matches pattern2
        ;;
    *)
        # Code to execute if no patterns match (default case)
        ;;
esac
```
- `expression`: The variable or expression to match against the patterns.
- `pattern`: A pattern to match against the expression.
- `;;`: Indicates the end of a block of code for a particular pattern.
- `*)`: The default case, executed if no other patterns match.
- `esac`: Ends the `case` statement (it is `case` spelled backward).

### Example
Here's an example script that uses a `case` statement to handle different input options:

```bash
#!/bin/bash

echo "Enter a number between 1 and 3:"
read number

case $number in
    1)
        echo "You entered one."
        ;;
    2)
        echo "You entered two."
        ;;
    3)
        echo "You entered three."
        ;;
    *)
        echo "Invalid input. Please enter a number between 1 and 3."
        ;;
esac
```

### Explanation:
1. **case $number in**: Checks the value of the `number` variable.
2. **1)**: Matches the pattern `1` and executes the corresponding block if the value is `1`.
3. **2)**: Matches the pattern `2` and executes the corresponding block if the value is `2`.
4. **3)**: Matches the pattern `3` and executes the corresponding block if the value is `3`.
5. **\*)**: The default case, executed if none of the patterns match.
6. **;;**: Ends the block of code for each pattern.
7. **esac**: Ends the `case` statement.

### Using Patterns
You can use wildcards and multiple patterns separated by `|` (pipe) within a `case` statement.

**Example:**
```bash
#!/bin/bash

echo "Enter a character:"
read char

case $char in
    [a-z])
        echo "You entered a lowercase letter."
        ;;
    [A-Z])
        echo "You entered an uppercase letter."
        ;;
    [0-9])
        echo "You entered a digit."
        ;;
    *)
        echo "You entered a special character."
        ;;
esac
```

### Explanation:
- **[a-z]**: Matches any lowercase letter.
- **[A-Z]**: Matches any uppercase letter.
- **[0-9]**: Matches any digit.
- **\***: Matches anything else (special characters in this case).

### Summary:
- **case**: Begins the `case` statement.
- **pattern)**: Each pattern to match against the expression.
- **;;**: Ends the code block for each pattern.
- **\*)**: The default case, executed if no patterns match.
- **esac**: Ends the `case` statement.

`case` statements are a powerful tool in shell scripting for handling multiple conditions with cleaner and more readable code. 