data modify storage do:io output set value {Name:"minecraft:wither_skeleton_wall_skull",Properties:{facing:"north",powered:"false"}}
execute if block ~ ~ ~ wither_skeleton_wall_skull[facing=south] run data modify storage do:io output.Properties.facing set value "south"
execute if block ~ ~ ~ wither_skeleton_wall_skull[facing=west] run data modify storage do:io output.Properties.facing set value "west"
execute if block ~ ~ ~ wither_skeleton_wall_skull[facing=east] run data modify storage do:io output.Properties.facing set value "east"
execute if block ~ ~ ~ wither_skeleton_wall_skull[powered=true] run data modify storage do:io output.Properties.powered set value "true"
