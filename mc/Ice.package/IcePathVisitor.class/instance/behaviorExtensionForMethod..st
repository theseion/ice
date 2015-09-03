private
behaviorExtensionForMethod: aDescription
	aDescription realProtocol isExtensionProtocol ifTrue: [ ^ IceFormatVersion  extensionExtension ].
	aDescription origin isTrait ifTrue: [ ^ IceFormatVersion extensionTrait ].
	^ IceFormatVersion extensionClass