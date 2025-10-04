data modify storage do:io output set value {Name:"minecraft:jungle_fence_gate",Properties:{facing:"north",in_wall:"false",open:"false",powered:"false"}}
execute if block ~ ~ ~ jungle_fence_gate[facing=south] run data modify storage do:io output.Properties.facing set value "south"
execute if block ~ ~ ~ jungle_fence_gate[facing=west] run data modify storage do:io output.Properties.facing set value "west"
execute if block ~ ~ ~ jungle_fence_gate[facing=east] run data modify storage do:io output.Properties.facing set value "east"
execute if block ~ ~ ~ jungle_fence_gate[in_wall=true] run data modify storage do:io output.Properties.in_wall set value "true"
execute if block ~ ~ ~ jungle_fence_gate[open=true] run data modify storage do:io output.Properties.open set value "true"
execute if block ~ ~ ~ jungle_fence_gate[powered=true] run data modify storage do:io output.Properties.powered set value "true"
