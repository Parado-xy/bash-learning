### Functions in Bash
Functions in Bash allow you to group commands together into a single, reusable unit. They help make scripts more modular and easier to manage.

#### Defining a Function
You can define a function using the following syntax:

```bash
function_name() {
    # Commands to execute
}
```

**Example**:
```bash
greet() {
    echo "Hello, $1!"
}
```
- `greet`: The name of the function.
- `$1`: The first argument passed to the function.

### Calling a Function
To call a function, simply use its name followed by any arguments:

**Example**:
```bash
greet "Alice"  # Outputs: Hello, Alice!
```

### Local Variables
Local variables in functions are scoped to the function, meaning they are only accessible within the function. Use the `local` keyword to declare a local variable.

**Example**:
```bash
calculate_sum() {
    local num1=$1
    local num2=$2
    local sum=$((num1 + num2))
    echo "The sum is: $sum"
}

calculate_sum 5 7  # Outputs: The sum is: 12
```
- `local num1=$1`: Declares `num1` as a local variable and assigns it the value of the first argument.
- `local num2=$2`: Declares `num2` as a local variable and assigns it the value of the second argument.
- `local sum=$((num1 + num2))`: Declares `sum` as a local variable and calculates the sum.

### Function Arguments
Arguments are passed to functions just like they are to scripts. Within the function, you can access these arguments using positional parameters (`$1`, `$2`, etc.).

**Example**:
```bash
display_info() {
    echo "Name: $1"
    echo "Age: $2"
}

display_info "Bob" 25  # Outputs: Name: Bob, Age: 25
```

### Returning Values
Functions can return values using the `return` keyword, which returns an integer exit status. For other types of return values, you can use `echo` to output the value and capture it using command substitution.

**Example**:
```bash
get_square() {
    local num=$1
    local square=$((num * num))
    echo $square
}

result=$(get_square 4)
echo "The square is: $result"  # Outputs: The square is: 16
```
- `get_square 4`: Calls the function with the argument `4`.
- `result=$(get_square 4)`: Captures the output of the function in the `result` variable.

### Example: Putting It All Together
Here’s an example script that uses functions, local variables, and arguments:

```bash
#!/bin/bash

# Define a function to calculate the factorial of a number
factorial() {
    local num=$1
    if [ $num -le 1 ]; then
        echo 1
    else
        local prev=$(factorial $((num - 1)))
        echo $((num * prev))
    fi
}

# Call the function and display the result
number=5
result=$(factorial $number)
echo "The factorial of $number is: $result"
```

### Summary:
- **Functions**: Group commands into reusable units.
  - **Definition**: `function_name() { ... }`
  - **Calling**: `function_name args`
- **Local Variables**: Scoped to the function, declared with `local`.
- **Arguments**: Accessed using positional parameters (`$1`, `$2`, ...).
- **Returning Values**:
  - **Integer Status**: `return value`
  - **Other Values**: Use `echo` and capture with command substitution.

