parsing
skipWhitespace

	[stream atEnd not and: [stream peek isSeparator]] whileTrue: [stream next]