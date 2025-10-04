data modify storage do:io output set value {Name:"minecraft:waxed_exposed_copper_bars",Properties:{east:"false",north:"false",south:"false",waterlogged:"false",west:"false"}}
execute if block ~ ~ ~ waxed_exposed_copper_bars[east=true] run data modify storage do:io output.Properties.east set value "true"
execute if block ~ ~ ~ waxed_exposed_copper_bars[north=true] run data modify storage do:io output.Properties.north set value "true"
execute if block ~ ~ ~ waxed_exposed_copper_bars[south=true] run data modify storage do:io output.Properties.south set value "true"
execute if block ~ ~ ~ waxed_exposed_copper_bars[waterlogged=true] run data modify storage do:io output.Properties.waterlogged set value "true"
execute if block ~ ~ ~ waxed_exposed_copper_bars[west=true] run data modify storage do:io output.Properties.west set value "true"
