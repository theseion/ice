visitor
visitClass: aClass
	^ (aClass package iceAccept: self) / (aClass name, '.class')