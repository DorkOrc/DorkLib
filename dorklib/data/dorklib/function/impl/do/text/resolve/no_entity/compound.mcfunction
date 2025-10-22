# arguments: path

# unconditional branches
$execute if data storage do:io $(path).extra[0] run function dorklib:impl/do/text/resolve/no_entity/list {path:"$(path).extra"}
$execute if data storage do:io $(path).translate if data storage do:io $(path).with[0] run function dorklib:impl/do/text/resolve/no_entity/list {path:"$(path).with"}
$execute if data storage do:io $(path).hover_event{action:"show_text"} if data storage do:io $(path).hover_event.value{} run function dorklib:impl/do/text/resolve/no_entity/compound {path:"$(path).hover_event.value"}
$execute if data storage do:io $(path).hover_event{action:"show_text"} if data storage do:io $(path).hover_event.value[0] run function dorklib:impl/do/text/resolve/no_entity/list {path:"$(path).hover_event.value"}

$execute if data storage do:io $(path).text run return 1
$execute if data storage do:io $(path).translate run return 1
$execute if data storage do:io $(path).keybind run return 1

data modify storage dorklib:main functions."do:text/resolve".selector set value ""

# check score component
$execute if data storage do:io $(path).score{name:"*"} run function dorklib:impl/do/text/resolve/no_entity/compound/discard_score {path:"$(path)"}
$execute if data storage do:io $(path).score.name run data modify storage dorklib:main functions."do:text/resolve".selector set string storage do:io $(path).score.name 0 2
$execute if data storage do:io $(path).score.name if data storage dorklib:main functions."do:text/resolve"{selector:"@s"} run function dorklib:impl/do/text/resolve/no_entity/compound/discard_score {path:"$(path)"}

# check selector component
$execute if data storage do:io $(path).selector run data modify storage dorklib:main functions."do:text/resolve".selector set string storage do:io $(path).selector 0 2
$execute if data storage do:io $(path).selector if data storage dorklib:main functions."do:text/resolve"{selector:"@s"} run return run function dorklib:impl/do/text/resolve/no_entity/compound/discard_selector {path:"$(path)"}

# check nbt component
$execute if data storage do:io $(path).nbt if data storage do:io $(path).entity run data modify storage dorklib:main functions."do:text/resolve".selector set string storage do:io $(path).entity 0 2
$execute if data storage do:io $(path).nbt if data storage do:io $(path).entity if data storage dorklib:main functions."do:text/resolve"{selector:"@s"} run return run function dorklib:impl/do/text/resolve/no_entity/compound/discard_nbt {path:"$(path)"}


# conditional branches
$execute if data storage do:io $(path).nbt if data storage do:io $(path).separator{} run function dorklib:impl/do/text/resolve/no_entity/compound {path:"$(path).separator"}
$execute if data storage do:io $(path).nbt if data storage do:io $(path).separator[0] run function dorklib:impl/do/text/resolve/no_entity/list {path:"$(path).separator"}
$execute if data storage do:io $(path).selector if data storage do:io $(path).separator{} run function dorklib:impl/do/text/resolve/no_entity/compound {path:"$(path).separator"}
$execute if data storage do:io $(path).selector if data storage do:io $(path).separator[0] run function dorklib:impl/do/text/resolve/no_entity/list {path:"$(path).separator"}
