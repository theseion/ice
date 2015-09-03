accessing
name
	^ super name ifNil: [ 
		self name: self extractNameFromSource.
		super name  ]