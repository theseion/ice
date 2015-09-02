private
stonWriterOn: stream
	^ self newSTONWriter
		on: stream;
		yourself