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

<details>
  <summary><h2>Text Component I/O Functions</h2></summary>

  <details>
  <summary><h3>Resolve Text Component - <code>do:text/resolve</code></h3></summary>

  Resolves the text component. Uses the entity context of the executor. If no entity is executing, a temporary marker will be used.
  > `(input: str|compound|list) -> str|compound`
  - `storage do:io input` is a text component.
  </details>

  <details>
  <summary><h3>Flatten Text Component - <code>do:text/flatten</code></h3></summary>

  Flattens the text component into a single string.
  > `(input: str|compound|list) -> str`
  - `storage do:io input` is a text component.
  </details>
</details>

<details>
  <summary><h2>String I/O Functions</h2></summary>

  <details>
  <summary><h3>Concatenate Strings - <code>do:str/join</code></h3></summary>

  Joins a list of strings together, returning a single string. Works with any arbitrary strings by escaping special characters as `"` (or `'`) and `\` before macro concatenation.
  > `(input: list[str, ...], separator: str = "") -> str`
  - `storage do:io input` is a list of strings. Any numerical types will be converted to strings. Any compound, list, or array types will be ignored.
  - `storage do:io args.separator` (*Optional*) is a string. This will be inserted between each string in the inputted list. Omitting this field will not insert anything between the strings.
  </details>

  <details>
  <summary><h3>Split Strings - <code>do:str/split</code></h3></summary>

  Splits a strings by some separator.
  > `(input: str, separator: str, max_splits: int = 2147483647) -> list[str, ...]`
  - `storage do:io input` is a string.
  - `storage do:io args.separator` is a non-empty string.
  - `storage do:io args.max_splits` (*Optional*) is a positive integer.
  </details>

  <details>
  <summary><h3>Convert to Lowercase - <code>do:str/lower</code></h3></summary>

  Converts each character in the string to its lowercase counterpart, if possible. Uses [this mapping](https://www.ibm.com/docs/en/i/7.3.0?topic=tables-unicode-uppercase-lowercase-conversion-mapping-table) of unicode characters.
  > `(input: str) -> str`
  - `storage do:io input` is a string.
  </details>

  <details>
  <summary><h3>Convert to Uppercase - <code>do:str/upper</code></h3></summary>

  Converts each character in the string to its uppercase counterpart, if possible. Uses [this mapping](https://www.ibm.com/docs/en/i/7.3.0?topic=tables-unicode-lowercase-uppercase-conversion-mapping-table) of unicode characters.
  > `(input: str) -> str`
  - `storage do:io input` is a string.
  </details>

  <details>
  <summary><h3>Convert to Alphanumeric - <code>do:str/alphanumeric</code></h3></summary>

  Converts each character in the string to an alphanumeric character (`0-9`, `a-z`, or `A-Z`) or an underscore (`_`). Many characters which are alphanumeric symbol variations (such as accented letters, alternate fonts, etc.) are respectively converted to their ASCII counterparts (e.g. `é` -> `e`).
  > `(input: str) -> str`
  - `storage do:io input` is a string.
  </details>

  <details>
  <summary><h3>Get Characters (respecting surrogate pairs) - <code>do:str/chars</code></h3></summary>

  Gets a list of the characters in the string **without** splitting apart surrogate pairs.
  > `(input: str) -> list[chr, ...]`
  - `storage do:io input` is a string.
  </details>

  <details>
  <summary><h3>Escape Double-Quotes - <code>do:str/escape/double_quote</code></h3></summary>

  Inserts backslash characters before each `\` and `"` character. Also replaces several special characters with their respective escape sequences (e.g. `\n`).
  > `(input: str) -> str`
  - `storage do:io input` is a string.
  </details>

  <details>
  <summary><h3>Escape Single-Quotes - <code>do:str/escape/single_quote</code></h3></summary>

  Inserts backslash characters before each `\` and `'` character. Also replaces several special characters with their respective escape sequences (e.g. `\n`).
  > `(input: str) -> str`
  - `storage do:io input` is a string.
  </details>
</details>

<details>
  <summary><h2>List (& Array) I/O Functions</h2></summary>

  <details>
  <summary><h3>Get the Index of a Value in a List - <code>do:list/index</code></h3></summary>

  Gets the index of a value in a list.
  > `(input: list) -> int`
  - `storage do:io input` is a list.
  - `storage do:io args.value` is any value.
  </details>
</details>

<details>
  <summary><h2>Compound I/O Functions</h2></summary>

  <details>
  <summary><h3>Get the Items of a Compound - <code>do:compound/items</code></h3></summary>

  Gets a list of the key-value pairs of the compound. Each element of the output list is a compounds with a "key" and "value" child. They, respectively, store the key and the value associated with that key in the input compound.
  > `(input: compound) -> list[compound{key: str, value: Any}, ...]`
  - `storage do:io input` is a compound.
  </details>

  <details>
  <summary><h3>Get the Keys of a Compound - <code>do:compound/keys</code></h3></summary>

  Gets a list of the keys of the compound.
  > `(input: compound) -> list[str, ...]`
  - `storage do:io input` is a compound.
  </details>

  <details>
  <summary><h3>Get the Values of a Compound - <code>do:compound/values</code></h3></summary>

  Gets a list of the values associated with each key of the compound.
  > `(input: compound) -> list[Any, ...]`
  - `storage do:io input` is a compound.
  </details>

  <details>
  <summary><h3>Get the Value of a Key in a Compound - <code>do:compound/get</code></h3></summary>

  Gets the value associated with the "key" argument. If the key is not present in the compound, the "default" argument is used. If no default is provided, the function fails.
  > `(input: compound, key: str, default: Any = None) -> Any`
  - `storage do:io input` is a compound.
  - `storage do:io args.key` is a string.
  - `storage do:io args.default` (*Optional*) is a string.
  </details>

  <details>
  <summary><h3>Dump Compound as Components List - <code>do:compound/write_components</code></h3></summary>

  Converts an NBT compound into a string containing its key-value pairs separated by equals signs and wrapped in square brackets. e.g. `{"minecraft:custom_name":"Bob"}` -> `[minecraft:custom_name="Bob"]`
  > `(input: Any) -> str`
  - `storage do:io input` is a compound of *component*:*value* pairs.
  - `storage do:io args.predicates` (*Optional*) is a compound of *component*:*component-predicate* pairs. Each key-value pair gets inserted with `~` as the key-value separator instead of `=`.
  - `storage do:io args.components` (*Optional*) is a list of component IDs. Each component ID gets inserted without a paired value.
  </details>
</details>

<details>
  <summary><h2>NBT I/O Functions</h2></summary>

  <details>
  <summary><h3>Get Data Type - <code>do:nbt/type</code></h3></summary>

  Gets the data type of the input. The options are `byte`, `short`, `int`, `long`, `float`, `double`, `string`, `compound`, `list`, `byte_array`, `int_array`, and `long_array`.
  > `(input: Any) -> str`
  - `storage do:io input` is any value.
  </details>

  <details>
  <summary><h3>Read SNBT - <code>do:nbt/read_snbt</code></h3></summary>

  Converts a string containing SNBT into the NBT object that it represents.
  > `(input: str) -> Any`
  - `storage do:io input` is a string containing SNBT.
  </details>

  <details>
  <summary><h3>Dump NBT as SNBT - <code>do:nbt/write_snbt</code></h3></summary>

  Converts any NBT object into a string containing its SNBT representation. This is different from `/data modify ... <op> string ...` as it wraps strings in quote marks and accepts compound, list, and array types. 
  > `(input: Any) -> str`
  - `storage do:io input` is any value.
  </details>

  <details>
  <summary><h3>Dump NBT as JSON - <code>do:nbt/write_json</code></h3></summary>

  Converts any NBT object into a string containing its JSON representation.
  > `(input: Any) -> str`
  - `storage do:io input` is any value.
  - `storage do:io args.byte_as_boolean` (*Optional*) is a boolean. If true, 0b and 1b will be written as false and true respectively.
  </details>
</details>

<details>
  <summary><h2>Raycasting Functions (Voxel Traversal)</h2></summary>

  These functions use a voxel traversal algorithm, so they are both very efficient and very precise. The current implementation does not take into account the physical hitboxes of blocks, and ignores entities.

  <details>
  <summary><h3>Raycast to Block - <code>do:raycast/to_block</code></h3></summary>

  Casts a ray in the direction of execution, then runs a function at the centre of the first block it hits. Entities are ignored. If no block is encountered, stops after "max_distance". Current implementation assumes that all block hitboxes are cubes.
  > `(function: str, require_hit: bool = False, max_distance: num = 64) -> None`
  - `storage do:io args.function` is a string containing a function ID.
  - `storage do:io args.require_hit` (*Optional*) is a boolean. If true, the function will only run if the ray hits a block. Defaults to *false*.
  - `storage do:io args.max_distance` (*Optional*) is a positive number. Specifies the maximum distance that the ray can travel before stopping. Defaults to *64*.
  - `storage do:io args.location_condition` (*Optional*) is a predicate ID or inlined predicate. The condition for what blocks/fluids cam be hit. The predicate is ran at the centre of each block that the ray intersects with. Defaults to *any block that is not air, cave_air, or void_air*.
  </details>

  <details>
  <summary><h3>Raycast to Inner Block Edge - <code>do:raycast/to_inner_edge</code></h3></summary>

  Casts a ray in the direction of execution, then runs a function at the inner edge of the first block it hits (always inside the block). Entities are ignored. If no block is encountered, stops after "max_distance". Current implementation assumes that all block hitboxes are cubes.
  > `(function: str, require_hit: bool = False, max_distance: num = 64) -> None`
  - `storage do:io args.function` is a string containing a function ID.
  - `storage do:io args.require_hit` (*Optional*) is a boolean. If true, the function will only run if the ray hits a block. Defaults to *false*.
  - `storage do:io args.max_distance` (*Optional*) is a positive number. Specifies the maximum distance that the ray can travel before stopping. Defaults to *64*.
  - `storage do:io args.location_condition` (*Optional*) is a predicate ID or inlined predicate. The condition for what blocks/fluids cam be hit. The predicate is ran at the centre of each block that the ray intersects with. Defaults to *any block that is not air, cave_air, or void_air*.
  </details>

  <details>
  <summary><h3>Raycast to Outer Block Edge - <code>do:raycast/to_outer_edge</code></h3></summary>

  Casts a ray in the direction of execution, then runs a function on the outer edge of the first block it hits (never inside the block). Entities are ignored. If no block is encountered, stops after "max_distance". Current implementation assumes that all block hitboxes are cubes.
  > `(function: str, require_hit: bool = False, max_distance: num = 64) -> None`
  - `storage do:io args.function` is a string containing a function ID.
  - `storage do:io args.require_hit` (*Optional*) is a boolean. If true, the function will only run if the ray hits a block. Defaults to *false*.
  - `storage do:io args.max_distance` (*Optional*) is a positive number. Specifies the maximum distance that the ray can travel before stopping. Defaults to *64*.
  - `storage do:io args.location_condition` (*Optional*) is a predicate ID or inlined predicate. The condition for what blocks/fluids cam be hit. The predicate is ran at the centre of each block that the ray intersects with. Defaults to *any block that is not air, cave_air, or void_air*.
  </details>
</details>

<details>
  <summary><h2>Entity Functions</h2></summary>

  <details>
  <summary><h3>Remove Entity Discretely - <code>function do:entity/remove</code></h3></summary>

  Kills the entity without any death animation, loot/xp drops, or vibrations occurring. Strictly speaking, it dismounts the entity's passengers, teleports the entity to the lowest y-position directly below them, then kills them. 

  This function is useful for non-mob entities too, such as markers, as using `/kill` would normally create a vibration at the location of the marker entity - [MC-220397](https://bugs.mojang.com/browse/MC/issues/MC-220397).

  This may also be chained in `/execute` as `if function do:remove_entity` to kill an entity which was temporarily summoned with the `summon` sub-command. **Note** that you should make sure to position as the entity *before* running this function as the teleport into the void may cause issues. Unfortunately, I can't make the function teleport the entity into the void, then kill it, then teleport it back - [MC-276062](https://bugs.mojang.com/browse/MC/issues/MC-276062).

  This is not intended to be ran as a player but, if it is, they will be killed as if `doImmediateRespawn` is true, `keepInventory` is true, and `showDeathMessages` is false, but without actually changing the gamerules. The player will not be teleported into the void, meaning the death will still trigger sculk sensors and a hurt sound will play. However, this means `entity_hurt_player` advancement triggers will run at the correct location and the `LastDeathLocation` will be saved correctly. Any scoreboards tracking the `custom:deaths` or `deathCount` stats will still increase.
  </details>

  <details>
  <summary><h3>Summon Passenger - <code>function do:summon/passenger {id, nbt, function}</code></h3></summary>

  Summons an entity which immediately mounts the executing entity, and then optionally runs a function.
  > `(input: str|None, id: str|None = None, nbt: compound|None = None, function: str|None = None) -> str`
  - `id` (*Required when Inlined*) is an entity type ID. Overrides the `input`.
  - `nbt` (*Optional*) is an NBT compound of tags to summon the entity with. If specified, the entity is summoned with that data directly. If omitted, the entity is summoned with default randomness. `UUID` and `Pos` tags are ignored.
  - `function` (*Optional*) is a function ID (without macro arguments) to run as the entity immediately after it mounts its vehicle. If omitted, no function is ran.

  e.g.
  ```
  execute as @n[type=chicken] run function do:summon/passenger {args:{id:"minecraft:zombie",nbt:{IsBaby:1b},function:"namespace:test"}}
  ```

  </details>
</details>

<details>
  <summary><h2>Block Functions</h2></summary>

  <details>
  <summary><h3>Block State - <code>do:block/block_state</code></h3></summary>

  Gets the `block_state` object of the block at that location.
  > `-> compound`
  </details>
</details>
