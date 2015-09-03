accessing
extractNameFromSource
	self source isEmptyOrNil ifTrue: [ ^ nil ].
	^ (RBParser parseMethod: self source onError: [ ^ nil ]) selector.