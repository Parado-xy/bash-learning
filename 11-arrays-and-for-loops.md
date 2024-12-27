Arrays are a useful feature in Bash scripting, allowing you to store and manage collections of data. Here are some detailed notes on how to use arrays in Bash:

### Declaring Arrays
You can declare arrays in Bash using the following syntax:

**Indexed Array**:
```bash
# Declaration and initialization
my_array=(value1 value2 value3)

# Declaration without initialization
declare -a my_array
my_array[0]=value1
my_array[1]=value2
my_array[2]=value3
```

**Associative Array** (available in Bash 4.0+):
```bash
# Declaration and initialization
declare -A my_assoc_array
my_assoc_array=([key1]=value1 [key2]=value2)

# Another way to declare and initialize
declare -A my_assoc_array=(
    [key1]=value1
    [key2]=value2
)
```

### Accessing Array Elements
You can access elements of an array using the index or key:

**Indexed Array**:
```bash
echo ${my_array[0]}  # Outputs: value1
echo ${my_array[1]}  # Outputs: value2
echo ${my_array[@]}  # Outputs the entire array content.
```

**Associative Array**:
```bash
echo ${my_assoc_array[key1]}  # Outputs: value1
echo ${my_assoc_array[key2]}  # Outputs: value2
```

### Adding Elements to Arrays
You can add elements to arrays using the assignment operator:

**Indexed Array**:
```bash
my_array[3]=value4
```

**Associative Array**:
```bash
my_assoc_array[key3]=value3
```

### Removing Elements from Arrays
You can remove elements from arrays using the `unset` command:

**Indexed Array**:
```bash
unset my_array[1]  # Removes the element at index 1
```

**Associative Array**:
```bash
unset my_assoc_array[key1]  # Removes the element with key 'key1'
```

### Looping Through Arrays
You can loop through arrays using `for` loops:

**Indexed Array**:
```bash
for value in "${my_array[@]}"; do
    echo $value
done
```

**Associative Array**:
```bash
for key in "${!my_assoc_array[@]}"; do
    echo "Key: $key, Value: ${my_assoc_array[$key]}"
done
```

### Array Length
You can get the length of an array using the `${#array[@]}` syntax:

**Indexed Array**:
```bash
echo ${#my_array[@]}  # Outputs the number of elements in the array
```

**Associative Array**:
```bash
echo ${#my_assoc_array[@]}  # Outputs the number of elements in the array
```

### Summary
- **Declaration**:
  - Indexed Array: `my_array=(value1 value2 value3)`
  - Associative Array: `declare -A my_assoc_array=([key1]=value1 [key2]=value2)`
- **Accessing Elements**:
  - Indexed Array: `${my_array[0]}`
  - Associative Array: `${my_assoc_array[key1]}`
- **Adding Elements**:
  - Indexed Array: `my_array[3]=value4`
  - Associative Array: `my_assoc_array[key3]=value3`
- **Removing Elements**: `unset my_array[1]` / `unset my_assoc_array[key1]`
- **Looping**:
  - Indexed Array: `for value in "${my_array[@]}"; do ... done`
  - Associative Array: `for key in "${!my_assoc_array[@]}"; do ... done`
- **Array Length**: `${#my_array[@]}` / `${#my_assoc_array[@]}`

