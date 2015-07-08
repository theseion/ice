private
stonWriterOn: stream
	^ self class newSTONWriter
		on: stream;
		yourself