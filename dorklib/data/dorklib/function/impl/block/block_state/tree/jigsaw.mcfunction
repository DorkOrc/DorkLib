data modify storage do:io output set value {Name:"minecraft:jigsaw",Properties:{"orientation": "north_up"}}
execute if block ~ ~ ~ jigsaw[orientation=down_east] run data modify storage do:io output.Properties.orientation set value "down_east"
execute if block ~ ~ ~ jigsaw[orientation=down_north] run data modify storage do:io output.Properties.orientation set value "down_north"
execute if block ~ ~ ~ jigsaw[orientation=down_south] run data modify storage do:io output.Properties.orientation set value "down_south"
execute if block ~ ~ ~ jigsaw[orientation=down_west] run data modify storage do:io output.Properties.orientation set value "down_west"
execute if block ~ ~ ~ jigsaw[orientation=up_east] run data modify storage do:io output.Properties.orientation set value "up_east"
execute if block ~ ~ ~ jigsaw[orientation=up_north] run data modify storage do:io output.Properties.orientation set value "up_north"
execute if block ~ ~ ~ jigsaw[orientation=up_south] run data modify storage do:io output.Properties.orientation set value "up_south"
execute if block ~ ~ ~ jigsaw[orientation=up_west] run data modify storage do:io output.Properties.orientation set value "up_west"
execute if block ~ ~ ~ jigsaw[orientation=west_up] run data modify storage do:io output.Properties.orientation set value "west_up"
execute if block ~ ~ ~ jigsaw[orientation=east_up] run data modify storage do:io output.Properties.orientation set value "east_up"
execute if block ~ ~ ~ jigsaw[orientation=south_up] run data modify storage do:io output.Properties.orientation set value "south_up"
