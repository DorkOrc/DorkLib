# get bottom element
data modify storage dorklib:main functions."do:text/flatten".element set from storage dorklib:main functions."do:text/flatten".components[0]
data remove storage dorklib:main functions."do:text/flatten".components[0]

# append substring
execute if data storage dorklib:main functions."do:text/flatten".element{} run data modify storage do:io input append from storage dorklib:main functions."do:text/flatten".element.text
execute unless data storage dorklib:main functions."do:text/flatten".element{} run data modify storage do:io input append from storage dorklib:main functions."do:text/flatten".element

# append extra components
data modify storage dorklib:main functions."do:text/flatten".components prepend from storage dorklib:main functions."do:text/flatten".element.extra[]

# repeat until all components have been found
execute if data storage dorklib:main functions."do:text/flatten".components[0] run function dorklib:impl/do/text/flatten/loop
