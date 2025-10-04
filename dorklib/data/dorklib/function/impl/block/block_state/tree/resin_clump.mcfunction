data modify storage do:io output set value {Name:"minecraft:resin_clump",Properties:{down:"false",east:"false",north:"false",south:"false",up:"false",waterlogged:"false",west:"false"}}
execute if block ~ ~ ~ resin_clump[down=true] run data modify storage do:io output.Properties.down set value "true"
execute if block ~ ~ ~ resin_clump[east=true] run data modify storage do:io output.Properties.east set value "true"
execute if block ~ ~ ~ resin_clump[north=true] run data modify storage do:io output.Properties.north set value "true"
execute if block ~ ~ ~ resin_clump[south=true] run data modify storage do:io output.Properties.south set value "true"
execute if block ~ ~ ~ resin_clump[up=true] run data modify storage do:io output.Properties.up set value "true"
execute if block ~ ~ ~ resin_clump[waterlogged=true] run data modify storage do:io output.Properties.waterlogged set value "true"
execute if block ~ ~ ~ resin_clump[west=true] run data modify storage do:io output.Properties.west set value "true"
