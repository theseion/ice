private
behaviorExtensionForMethodDescription: aDescription
	aDescription isExtension ifTrue: [ ^ IceFormatVersion extensionExtension ].
	aDescription isTrait ifTrue: [ ^ IceFormatVersion extensionTrait ].
	^ IceFormatVersion extensionClass