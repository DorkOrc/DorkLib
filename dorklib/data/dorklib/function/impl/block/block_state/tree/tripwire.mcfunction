data modify storage do:io output set value {Name:"minecraft:tripwire",Properties:{attached:"false",disarmed:"false",east:"false",north:"false",powered:"false",south:"false",west:"false"}}
execute if block ~ ~ ~ tripwire[attached=true] run data modify storage do:io output.Properties.attached set value "true"
execute if block ~ ~ ~ tripwire[disarmed=true] run data modify storage do:io output.Properties.disarmed set value "true"
execute if block ~ ~ ~ tripwire[east=true] run data modify storage do:io output.Properties.east set value "true"
execute if block ~ ~ ~ tripwire[north=true] run data modify storage do:io output.Properties.north set value "true"
execute if block ~ ~ ~ tripwire[powered=true] run data modify storage do:io output.Properties.powered set value "true"
execute if block ~ ~ ~ tripwire[south=true] run data modify storage do:io output.Properties.south set value "true"
execute if block ~ ~ ~ tripwire[west=true] run data modify storage do:io output.Properties.west set value "true"
