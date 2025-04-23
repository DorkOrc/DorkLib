# Prints the exception message to the chat of all players with the "dorklib.admin" tag

tellraw @a[tag=dorklib.admin] {color:"gray",italic:true,translate:"chat.type.admin",fallback:"[%s: %s]",with:[{storage:"dorklib:meta",nbt:"name",interpret:true},\
    [\
        {storage:"do:io",nbt:"exception.message",interpret:true}\
    ]\
],hover_event:{action:"show_text",value:{storage:"do:io",nbt:"exception"}}}
