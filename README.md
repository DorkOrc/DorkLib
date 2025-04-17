# DorkLib

## String Functions

### do:str/join
Joins a list of strings together, returning a single string.
> `(input: list[str, ...], separator: str = "") -> str`
- `storage do:io input` should be a list of strings. Any numerical types will be converted to strings. Any compound, list, or array types will be ignored.
- `storage do:io args.separator` can optionally be a string. This will be inserted between each string in the inputted list. Omitting this field will not insert anything between the strings.

### do:str/split
Splits a strings by some separator.
> `(input: str, separator: str, max_splits: int = 2147483647) -> list[str, ...]`
- `storage do:io input` should be a string.
- `storage do:io args.separator` should be a non-empty string.
- `storage do:io args.max_splits` may optionally be a positive integer.

### do:str/escape/double_quote
Inserts backslash characters before each `\` and `"` character. Also replaces several special characters with their respective escape sequences (e.g. `\n`).
> `(input: str) -> str`
- `storage do:io input` should be a string.

### do:str/escape/single_quote
Inserts backslash characters before each `\` and `'` character. Also replaces several special characters with their respective escape sequences (e.g. `\n`).
> `(input: str) -> str`
- `storage do:io input` should be a string.

## Text Component Functions

### do:text/resolve
Resolves the text component. Uses the entity context of the executor. If no entity is executing, a temporary marker will be used.
> `(input: str|dict|list) -> str|dict`
- `storage do:io input` should be a text component.

### do:text/flatten
Flattens the text component into a single string.
> `(input: str|dict|list) -> str`
- `storage do:io input` should be a text component.

## NBT Functions

### do:nbt/compound/items
Gets a list of the key-value pairs of the compound. Each element of the output list is a list with two elements. The first element is the key and the second element is the value.
> `(input: dict) -> list[tuple[str, Any], ...]`
- `storage do:io input` should be a compound.

### do:nbt/compound/keys
Gets a list of the keys of the compound.
> `(input: dict) -> list[str, ...]`
- `storage do:io input` should be a compound.

### do:nbt/compound/values
Gets a list of the values associated with each key of the compound.
> `(input: dict) -> list[Any, ...]`
- `storage do:io input` should be a compound.

### do:nbt/compound/get
Gets the value associated with the "key" argument. If the key is not present in the compound, the "default" argument is used. If no default is provided, the function fails.
> `(input: dict, key: str, default: Any = None) -> Any`
- `storage do:io input` should be a compound.
- `storage do:io args.key` should be a string.
- `storage do:io args.default` can optionally be a string.
