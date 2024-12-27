Here are some detailed notes on using `if-elif-else` statements in shell scripting:

### Basic Structure
The `if-elif-else` statement in shell scripting is used to execute a block of code conditionally. The syntax is as follows:

```bash
if [ condition ]
then
    # Code to execute if condition is true
elif [ another_condition ]
then
    # Code to execute if another_condition is true
else
    # Code to execute if none of the above conditions are true
fi
```

### Example
Here's an example script that uses `if-elif-else` statements to determine the type of a given number:

```bash
#!/bin/bash

echo "Enter a number:"
read number

if [ $number -gt 0 ]
then
    echo "The number is positive."
elif [ $number -lt 0 ]
then
    echo "The number is negative."
else
    echo "The number is zero."
fi
```

### Explanation:
1. **if [ condition ]**: Checks if the condition is true. 
2. **then**: Starts the block of code to execute if the condition is true.
3. **elif [ another_condition ]**: Checks another condition if the previous `if` condition was false.
4. **else**: Executes this block if none of the conditions were true.
5. **fi**: Ends the `if-elif-else` statement.

### Conditions
- **Comparison Operators**:
  - `-eq`: Equal
  - `-ne`: Not equal
  - `-lt`: Less than
  - `-le`: Less than or equal to
  - `-gt`: Greater than
  - `-ge`: Greater than or equal to

**Example**:
```bash
if [ $number -eq 10 ]
then
    echo "The number is equal to 10."
fi
```

- **String Comparison**:
  - `=`: Equal
  - `!=`: Not equal
  - `-z`: String is null (zero length)
  - `-n`: String is not null (non-zero length)

**Example**:
```bash
if [ "$string1" = "$string2" ]
then
    echo "The strings are equal."
fi
```

### Combining Conditions
You can combine multiple conditions using logical operators such as `-a` (and) and `-o` (or).

**Example**:
```bash
if [ $number -gt 0 -a $number -lt 100 ]
then
    echo "The number is between 1 and 99."
fi
```

### Example with Multiple Conditions:
```bash
#!/bin/bash

echo "Enter your age:"
read age

if [ $age -lt 18 ]
then
    echo "You are a minor."
elif [ $age -ge 18 -a $age -lt 65 ]
then
    echo "You are an adult."
else
    echo "You are a senior."
fi
```

### Summary:
- **if**: Starts the conditional check.
- **elif**: Specifies a new condition to check if the previous one was false.
- **else**: Executes code if none of the conditions were true.
- **fi**: Ends the `if-elif-else` statement.
- **Comparison Operators**: Used to compare numbers or strings.
- **Logical Operators**: Used to combine multiple conditions.
