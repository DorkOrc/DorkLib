data modify storage do:io output set value {Name:"minecraft:waxed_copper_golem_statue",Properties:{copper_golem_pose:"standing",facing:"north",waterlogged:"false"}}
execute if block ~ ~ ~ waxed_copper_golem_statue[copper_golem_pose=sitting] run data modify storage do:io output.Properties.copper_golem_pose set value "sitting"
execute if block ~ ~ ~ waxed_copper_golem_statue[copper_golem_pose=running] run data modify storage do:io output.Properties.copper_golem_pose set value "running"
execute if block ~ ~ ~ waxed_copper_golem_statue[copper_golem_pose=star] run data modify storage do:io output.Properties.copper_golem_pose set value "star"
execute if block ~ ~ ~ waxed_copper_golem_statue[facing=south] run data modify storage do:io output.Properties.facing set value "south"
execute if block ~ ~ ~ waxed_copper_golem_statue[facing=west] run data modify storage do:io output.Properties.facing set value "west"
execute if block ~ ~ ~ waxed_copper_golem_statue[facing=east] run data modify storage do:io output.Properties.facing set value "east"
execute if block ~ ~ ~ waxed_copper_golem_statue[waterlogged=true] run data modify storage do:io output.Properties.waterlogged set value "true"
