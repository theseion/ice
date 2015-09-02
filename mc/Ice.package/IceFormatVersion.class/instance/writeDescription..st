private old
writeDescription: aDescription
	self 
		writeDescription: aDescription 
		do: [ :stream | aDescription stonOn: (self stonWriterOn: stream) ]	