# DorkLib

## Overview
API functions are all functions under the `do` namespace, for example `do:str/join`.

Data I/O functions are handled by writing to `storage do:io input` (and optionally `storage do:io args`) then running the function, then reading from `storage do:io output`. If no `input` is given but there is still some `output` present, that value will be treated as the input, allowing for stringing together multiple functions without having to manually copy the value back to the `input` from the `output`.

Some functions allow for, or require, some additional arguments. These additional arguments can be written to `storage do:io args` before running the function, or they can be inlined by running the function with a `.` postfixed to the function ID and the arguments specified as the `args` variable of a macro function. For example, you could run
```
data modify storage do:io args set value {separator:"_"}
function do:str/split
```
Or you can inline it as
```
function do:str/split. {args:{separator:"_"}}
```

Once a function is ran, the `input` and `args` fields will be deleted, leaving only the `output`.

## String Functions

<details>
  <summary><h3>Concatenate Strings - `do:str/join`</h3></summary>

  Joins a list of strings together, returning a single string.
  > `(input: list[str, ...], separator: str = "") -> str`
  - `storage do:io input` is a list of strings. Any numerical types will be converted to strings. Any compound, list, or array types will be ignored.
  - `storage do:io args.separator` (*Optional*) is a string. This will be inserted between each string in the inputted list. Omitting this field will not insert anything between the strings.
</details>

<details>
  <summary><h3>Split Strings - `do:str/split`</h3></summary>

  Splits a strings by some separator.
  > `(input: str, separator: str, max_splits: int = 2147483647) -> list[str, ...]`
  - `storage do:io input` is a string.
  - `storage do:io args.separator` is a non-empty string.
  - `storage do:io args.max_splits` (*Optional*) is a positive integer.
</details>

<details>
  <summary><h3>Escape Double-Quotes - `do:str/escape/double_quote`</h3></summary>

  Inserts backslash characters before each `\` and `"` character. Also replaces several special characters with their respective escape sequences (e.g. `\n`).
  > `(input: str) -> str`
  - `storage do:io input` is a string.
</details>

<details>
  <summary><h3>Escape Single-Quotes - `do:str/escape/single_quote`</h3></summary>

  Inserts backslash characters before each `\` and `'` character. Also replaces several special characters with their respective escape sequences (e.g. `\n`).
  > `(input: str) -> str`
  - `storage do:io input` is a string.
</details>

## Text Component Functions

<details>
  <summary><h3>Resolve Text Component - `do:text/resolve`</h3></summary>

  Resolves the text component. Uses the entity context of the executor. If no entity is executing, a temporary marker will be used.
  > `(input: str|compound|list) -> str|compound`
  - `storage do:io input` is a text component.
</details>

<details>
  <summary><h3>Flatten Text Component - `do:text/flatten`</h3></summary>

  Flattens the text component into a single string.
  > `(input: str|compound|list) -> str`
  - `storage do:io input` is a text component.
</details>

## NBT Functions

<details>
  <summary><h3>Get Data Type - `do:nbt/type`</h3></summary>

  Gets the data type of the input. The options are `byte`, `short`, `int`, `long`, `float`, `double`, `string`, `compound`, `list`, `byte_array`, `int_array`, and `long_array`.
  > `(input: Any) -> str`
  - `storage do:io input` is any value.
</details>

<details>
  <summary><h3>Read SNBT - `do:nbt/read_snbt`</h3></summary>

  Converts a string containing SNBT into the NBT object that it represents.
  > `(input: str) -> Any`
  - `storage do:io input` is a string containing SNBT.
</details>

<details>
  <summary><h3>Dump NBT as SNBT - `do:nbt/write_snbt`</h3></summary>

  Converts any NBT object into a string containing its SNBT representation. This is different from `/data modify ... <op> string ...` as it wraps strings in quote marks and accepts compound, list, and array types. 
  > `(input: Any) -> str`
  - `storage do:io input` is any value.
</details>

<details>
  <summary><h3>Dump NBT as JSON - `do:nbt/write_json`</h3></summary>

  Converts any NBT object into a string containing its JSON representation.
  > `(input: Any) -> str`
  - `storage do:io input` is any value.
  - `storage do:io args.byte_as_boolean` (*Optional*) is a boolean. If true, 0b and 1b will be written as false and true respectively.
</details>

<details>
  <summary><h3>Get the Items of a Compound - `do:nbt/compound/items`</h3></summary>

  Gets a list of the key-value pairs of the compound. Each element of the output list is a compounds with a "key" and "value" child. They, respectively, store the key and the value associated with that key in the input compound.
  > `(input: compound) -> list[compound{key: str, value: Any}, ...]`
  - `storage do:io input` is a compound.
</details>

<details>
  <summary><h3>Get the Keys of a Compound - `do:nbt/compound/keys`</h3></summary>

  Gets a list of the keys of the compound.
  > `(input: compound) -> list[str, ...]`
  - `storage do:io input` is a compound.
</details>

<details>
  <summary><h3>Get the Values of a Compound - `do:nbt/compound/values`</h3></summary>

  Gets a list of the values associated with each key of the compound.
  > `(input: compound) -> list[Any, ...]`
  - `storage do:io input` is a compound.
</details>

<details>
  <summary><h3>Get the Value of a Key in a Compound - `do:nbt/compound/get`</h3></summary>

  Gets the value associated with the "key" argument. If the key is not present in the compound, the "default" argument is used. If no default is provided, the function fails.
  > `(input: compound, key: str, default: Any = None) -> Any`
  - `storage do:io input` is a compound.
  - `storage do:io args.key` is a string.
  - `storage do:io args.default` (*Optional*) is a string.
</details>
