private
descriptionFor: aMethod
	aMethod realProtocol isExtensionProtocol 
		ifTrue: [ ^ IceExtensionDescription ].
	^ IceMethodDescription