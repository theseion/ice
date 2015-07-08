private writing
writeDescription: aDescription do: aBlock
	| reference |
	reference := aDescription referenceOn: self repository.
	reference parent ensureCreateDirectory.
	reference ensureDelete.
	reference writeStreamDo: aBlock