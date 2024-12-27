Question: Fantastic, but i've got a few questions. First can we leave white spaces when defining variables in bash like manOfTheYear = Jalla? also what does it mean when you do $( some expression)


Answer:
### Variable Assignment in Bash
In Bash, you **cannot** leave spaces around the `=` sign when defining variables. The correct syntax should not include any spaces.

**Incorrect**:
```bash
manOfTheYear = Jalla
```
This will result in an error because Bash interprets spaces differently and will not recognize this as a proper variable assignment.

**Correct**:
```bash
manOfTheYear=Jalla
```
This assigns the value `Jalla` to the variable `manOfTheYear`.

### Command Substitution: `$(some expression)`
Command substitution allows you to capture the output of a command and use it as a value in your script. The syntax for command substitution is `$(command)` or the older form `` `command` ``.

**Example**:
```bash
current_date=$(date)
echo "Today's date is $current_date"
```
- `$(date)`: Executes the `date` command and captures its output.
- `current_date=$(date)`: Assigns the output of `date` to the variable `current_date`.
- `echo "Today's date is $current_date"`: Prints the current date.

### Example with Both Concepts:
Here's an example that combines variable assignment without spaces and command substitution:

```bash
#!/bin/bash

# Assigning values without spaces
name="Jalla"
manOfTheYear=$name  # Using the variable name in the assignment

# Using command substitution
current_date=$(date)
echo "The current date and time is: $current_date"

# Display the man of the year
echo "Man of the Year: $manOfTheYear"
```

**Explanation**:
1. **Variable Assignment**: `name="Jalla"` and `manOfTheYear=$name` correctly assign values without spaces around the `=`.
2. **Command Substitution**: `current_date=$(date)` captures the output of the `date` command and assigns it to `current_date`.

This script will output:
```
The current date and time is: [current date and time]
Man of the Year: Jalla
```

