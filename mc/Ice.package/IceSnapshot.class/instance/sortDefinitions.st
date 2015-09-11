private
sortDefinitions 
	"merge on place (do not copy or reasign)"
	definitions sort: [ :a :b | | comparison |
		comparison := a loadOrder = b loadOrder.
		comparison 
			ifTrue: [ a asString < b asString ]
			ifFalse: [ a loadOrder < b loadOrder ] ]