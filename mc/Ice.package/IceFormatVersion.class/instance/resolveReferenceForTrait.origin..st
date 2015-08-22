private
resolveReferenceForTrait: description origin: aTrait
	^ (aTrait package asIceDescription referenceOn: self)
		/ description name, '.trait'