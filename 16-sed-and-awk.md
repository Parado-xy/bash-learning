 `sed` (Stream Editor) and `awk` are powerful text processing utilities in Unix and Linux. Here are some detailed notes on both:

### `sed` (Stream Editor)

**`sed`** is used for parsing and transforming text. It reads text from standard input or files and applies a sequence of operations to each line of the text.

#### Basic Syntax:
```bash
sed 'operation' file
```

#### Common Operations:
- **Substitution (`s`)**: Replace occurrences of a pattern.
  ```bash
  sed 's/old/new/g' file
  ```
  - `s`: Substitute command.
  - `old`: Pattern to replace.
  - `new`: Replacement text.
  - `g`: Global flag to replace all occurrences in each line.

- **Deleting Lines (`d`)**: Delete lines matching a pattern.
  ```bash
  sed '/pattern/d' file
  ```
  - `/pattern/d`: Delete lines containing `pattern`.

- **Inserting Text (`i`)**: Insert text before a line.
  ```bash
  sed '1i\New text' file
  ```
  - `1i\`: Insert text before the first line.

- **Appending Text (`a`)**: Append text after a line.
  ```bash
  sed '1a\New text' file
  ```
  - `1a\`: Append text after the first line.

- **Printing Lines (`p`)**: Print specific lines.
  ```bash
  sed -n '2,4p' file
  ```
  - `-n`: Suppress automatic printing.
  - `2,4p`: Print lines 2 to 4.

### `awk`

**`awk`** is a programming language designed for text processing and typically used as a data extraction and reporting tool. It processes each line of input text according to a set of instructions.

#### Basic Syntax:
```bash
awk 'pattern { action }' file
```

#### Common Usage:
- **Print Specific Fields**:
  ```bash
  awk '{print $1, $3}' file
  ```
  - `$1`: First field.
  - `$3`: Third field.

- **Pattern Matching**:
  ```bash
  awk '/pattern/ {print $0}' file
  ```
  - `/pattern/`: Pattern to match.
  - `{print $0}`: Print the entire line.

- **Field Separator**: Specify a custom field separator.
  ```bash
  awk -F: '{print $1, $NF}' file
  ```
  - `-F:`: Use colon `:` as the field separator.
  - `$NF`: Last field.

- **Built-in Variables**:
  - `NR`: Number of records (lines) read so far.
  - `NF`: Number of fields in the current record.

**Example**:
```bash
awk '{print NR, $0}' file
```
- `NR`: Print line number followed by the line.

- **Arithmetic Operations**:
  ```bash
  awk '{sum += $1} END {print sum}' file
  ```
  - `sum += $1`: Add the value of the first field to `sum`.
  - `END {print sum}`: Print the total sum after processing all lines.

### Summary
#### `sed`:
- **Substitution**: `sed 's/old/new/g' file`
- **Deleting Lines**: `sed '/pattern/d' file`
- **Inserting Text**: `sed '1i\New text' file`
- **Appending Text**: `sed '1a\New text' file`
- **Printing Lines**: `sed -n '2,4p' file`

#### `awk`:
- **Print Fields**: `awk '{print $1, $3}' file`
- **Pattern Matching**: `awk '/pattern/ {print $0}' file`
- **Field Separator**: `awk -F: '{print $1, $NF}' file`
- **Built-in Variables**: `NR`, `NF`
- **Arithmetic Operations**: `awk '{sum += $1} END {print sum}' file`

