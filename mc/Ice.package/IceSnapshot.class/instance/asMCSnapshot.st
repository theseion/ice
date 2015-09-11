converting
asMCSnapshot 
	| visitor |
	visitor := IceMCSnapshotVisitor new.
	visitor visit: self.
	^ visitor snapshot