data modify storage do:io output set value {Name:"minecraft:chorus_plant",Properties:{down:"false",east:"false",north:"false",south:"false",up:"false",west:"false"}}
execute if block ~ ~ ~ chorus_plant[down=true] run data modify storage do:io output.Properties.down set value "true"
execute if block ~ ~ ~ chorus_plant[east=true] run data modify storage do:io output.Properties.east set value "true"
execute if block ~ ~ ~ chorus_plant[north=true] run data modify storage do:io output.Properties.north set value "true"
execute if block ~ ~ ~ chorus_plant[south=true] run data modify storage do:io output.Properties.south set value "true"
execute if block ~ ~ ~ chorus_plant[up=true] run data modify storage do:io output.Properties.up set value "true"
execute if block ~ ~ ~ chorus_plant[west=true] run data modify storage do:io output.Properties.west set value "true"
