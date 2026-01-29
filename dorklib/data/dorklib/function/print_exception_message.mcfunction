# Prints the exception message to the chat of all players with the "dorklib.admin" tag

execute unless score #debug_mode dorklib.global matches 1 run tellraw @a[tag=dorklib.admin] {\
	color: "gray",\
	italic: true,\
	translate: "chat.type.admin",\
	fallback: "[%s: %s]",\
	with: [\
		{\
			storage: "dorklib:meta",\
			nbt: "name",\
			interpret: true\
		},\
		[\
			{\
				storage: "do:io",\
				nbt: "exception.message",\
				interpret: true\
			}\
		]\
	],\
	hover_event: {\
		action: "show_text",\
		value: [\
			"• ",\
			{\
				storage: "do:io",\
				nbt: "exception.function[]",\
				interpret: true,\
				separator: "\n• "\
			},\
			{\
				"color": "dark_gray",\
				"text": "\nexception:\n"\
			},\
			{\
				storage: "do:io",\
				nbt: "exception"\
			}\
		]\
	}\
}

execute if score #debug_mode dorklib.global matches 1 run tellraw @a[tag=dorklib.admin] {\
	color: "gray",\
	italic: true,\
	translate: "chat.type.admin",\
	fallback: "[%s: %s]",\
	with: [\
		{\
			storage: "dorklib:meta",\
			nbt: "name",\
			interpret: true\
		},\
		[\
			{\
				storage: "do:io",\
				nbt: "exception.message",\
				interpret: true\
			}\
		]\
	],\
	hover_event: {\
		action: "show_text",\
		value: [\
			"• ",\
			{\
				storage: "do:io",\
				nbt: "exception.function[]",\
				interpret: true,\
				separator: "\n• "\
			},\
			{\
				"color": "dark_gray",\
				"text": "\nexception:\n"\
			},\
			{\
				storage: "do:io",\
				nbt: "exception"\
			},\
			{\
				"color": "dark_gray",\
				"text": "\ndebug:\n"\
			},\
			{\
				storage: "do:io",\
				nbt: "debug"\
			}\
		]\
	}\
}
