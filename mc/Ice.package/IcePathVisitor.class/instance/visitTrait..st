visitor
visitTrait: aTrait
	^ (aTrait package iceAccept: self) / (aTrait name, '.trait')