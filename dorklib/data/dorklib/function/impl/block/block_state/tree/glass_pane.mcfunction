data modify storage do:io output set value {Name:"minecraft:glass_pane",Properties:{east:"false",north:"false",south:"false",waterlogged:"false",west:"false"}}
execute if block ~ ~ ~ glass_pane[east=true] run data modify storage do:io output.Properties.east set value "true"
execute if block ~ ~ ~ glass_pane[north=true] run data modify storage do:io output.Properties.north set value "true"
execute if block ~ ~ ~ glass_pane[south=true] run data modify storage do:io output.Properties.south set value "true"
execute if block ~ ~ ~ glass_pane[waterlogged=true] run data modify storage do:io output.Properties.waterlogged set value "true"
execute if block ~ ~ ~ glass_pane[west=true] run data modify storage do:io output.Properties.west set value "true"
