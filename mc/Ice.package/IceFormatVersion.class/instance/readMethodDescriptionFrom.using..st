private reading
readMethodDescriptionFrom: aReference using: aClass
	| contents description |
	contents := aReference readStreamDo: [ :stream | self split: stream contents ].
	description := aReference readStreamDo: [ :stream | aClass readFrom: contents first readStream ].
	description source: contents second.
	^ description